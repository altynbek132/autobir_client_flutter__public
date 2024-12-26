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

import 'create_account.dart';

part 'create_account_wm.g.dart';

// @LazySingleton(dispose: disposeCreateAccountWm)
class CreateAccountWm = _CreateAccountWmBase with _$CreateAccountWm;

abstract class _CreateAccountWmBase extends MobxWM<CreateAccountScreen> with Store, LoggerMixin {
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
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  bool isPasswordVisible = false;

  @observable
  bool isAgreementChecked = false;

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
  void toggleAgreement() {
    isAgreementChecked = !isAgreementChecked;
  }

  @action
  Future<void> registerButtonPressed() async {
    FocusManager.instance.primaryFocus?.unfocus();

    // check if fields are valid
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    // check if agreement is checked
    if (!isAgreementChecked) {
      showSnackbar(context, 'Необходимо принять соглашение');
      return;
    }

    isLoading = true;

    try {
      /// TODO: если user существует (статус 200), то переходим на экран нового пароля (надо проработать c dio interceptor)
      /// если user не существует (статус 201), то переходим на экран ввода кода из смс
      final mobilePhone = '7${phoneController.text.removeAllWhitespace()}';
      await _apiService.signup(
        SignupRequest(
          name: nameController.text,
          mobilePhone: mobilePhone,
          password: passwordController.text,
        ),
      );

      // navigate to verif screen
      if (context.mounted) {
        await context.pushRoute(
          VerificationCodeRoute(mobilePhone: mobilePhone, password: passwordController.text),
        );
      }
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

Future<void> disposeCreateAccountWm(CreateAccountWm instance) async => instance.dispose();
