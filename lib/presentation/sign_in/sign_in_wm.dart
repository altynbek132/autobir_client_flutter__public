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
import 'package:utils/utils_dart/utils_dart.dart';
import 'package:utils/utils_flutter.dart';
import 'package:utils/utils_dart.dart';

import 'sign_in.dart';

part 'sign_in_wm.g.dart';

// @LazySingleton(dispose: disposeSignInWm)
class SignInWm = _SignInWmBase with _$SignInWm;

abstract class _SignInWmBase extends MobxWM<SignInScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    phoneController.addListener(() {
      if (phoneController.text.length == 13) {
        FocusScope.of(context).nextFocus();
      }
    });
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  bool isPasswordVisible = false;

  @observable
  bool isLoading = false;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
  }

  @action
  Future<void> loginPressed() async {
    FocusManager.instance.primaryFocus?.unfocus();

    // check if fields are valid
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    isLoading = true;

    try {
      final signInResponse = await _apiService.signin(
        SigninRequest(
          mobilePhone: '7${phoneController.text.removeAllWhitespace()}',
          password: passwordController.text,
        ),
      );

      // set accessToken
      final accessToken = '${signInResponse.tokenType} ${signInResponse.accessToken}';
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

Future<void> disposeSignInWm(SignInWm instance) async => instance.dispose();
