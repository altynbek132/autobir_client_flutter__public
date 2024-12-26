import 'dart:async';

// ignore: unused_import
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
// ignore: unused_import
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'change_password_screen.dart';

part 'change_password_screen_wm.g.dart';

// @LazySingleton(dispose: disposeChangePasswordScreenWm)
class ChangePasswordScreenWm = _ChangePasswordScreenWmBase with _$ChangePasswordScreenWm;

abstract class _ChangePasswordScreenWmBase extends MobxWM<ChangePasswordScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    print('adsfasdfasd');
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------
  final isObscureCurrent = true.obs();
  final isObscureNew = true.obs();
  final isObscureConfirm = true.obs();

  late final currentTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);
  late final newTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);
  late final confirmTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> confirmPressed() async {
    try {
      // show snackbar if passwords are not equal
      if (newTEC.value.text != confirmTEC.value.text) {
        showSnackbar(context, 'Пароли не совпадают');
        return;
      }
      final apiService = locator<ApiService>();
      await apiService.resetPassword(
        ResetPasswordRequest(
          oldPassword: currentTEC.value.text,
          newPassword: newTEC.value.text,
        ),
      );
      context.maybePop();
    } on Exception catch (e) {
      showSnackbar(context, 'Ошибка при изменении пароля');
      rethrow;
    } finally {}
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

Future<void> disposeChangePasswordScreenWm(ChangePasswordScreenWm instance) async => instance.dispose();
