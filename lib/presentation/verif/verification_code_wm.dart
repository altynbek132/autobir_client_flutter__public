import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/auth_store.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'verification_code.dart';

part 'verification_code_wm.g.dart';

// @LazySingleton(dispose: disposeVerificationCodeWm)
class VerificationCodeWm = _VerificationCodeWmBase with _$VerificationCodeWm;

abstract class _VerificationCodeWmBase extends MobxWM<VerificationCodeScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    mobilePhone = widget.mobilePhone;
    password = widget.password;
    super.initWidgetModel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  late final String mobilePhone;

  late final String password;

  Timer? _timer;

  static const int _timerDuration = 60;

  final codeController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  /// if null - timer is not running
  @observable
  int? timerCountdown;

  @observable
  bool isLoading = false;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void startTimer() {
    timerCountdown = _timerDuration;
    _timer?.cancel();
    _timer = Timer.periodic(
      1.seconds,
      (timer) {
        if (timerCountdown != null && timerCountdown! > 1) {
          timerCountdown = timerCountdown! - 1;
        } else {
          timerCountdown = null;
          _timer?.cancel();
        }
      },
    );
  }

  @action
  Future<void> sendButtonPressed() async {
    FocusManager.instance.primaryFocus?.unfocus();

    // check if code are valid
    final isValid = codeController.text.length == 4;
    if (!isValid) {
      showSnackbar(context, 'Введите код');
      return;
    }

    isLoading = true;

    try {
      final verifyMobilePhoneResponse = await _apiService.verifyMobilePhone(
        VerifyMobilePhoneRequest(
          mobilePhone: mobilePhone,
          verificationCode: codeController.text,
          password: password,
        ),
      );

      // set accessToken
      final accessToken = '${verifyMobilePhoneResponse.tokenType} ${verifyMobilePhoneResponse.accessToken}';
      await locator<AuthStore>().setAccessToken(accessToken);

      // navigate to home screen
      if (context.mounted) await context.router.replaceAll([const HomeRoute()]);
    } on Exception catch (e) {
      logger.e(e);
      // show error message
      // TODO: исправить message на что-то более подходящее
      if (context.mounted) showErrorSnackBar(context, e);
    } finally {
      isLoading = false;
    }
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  String formatDuration(int totalSeconds) {
    final int minutes = totalSeconds ~/ 60;
    final int seconds = totalSeconds % 60;

    final String minutesStr = minutes.toString().padLeft(2, '0');
    final String secondsStr = seconds.toString().padLeft(2, '0');

    return '$minutesStr:$secondsStr';
  }

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => '',
      ],
      logger,
    );
  }
}

Future<void> disposeVerificationCodeWm(VerificationCodeWm instance) async => instance.dispose();
