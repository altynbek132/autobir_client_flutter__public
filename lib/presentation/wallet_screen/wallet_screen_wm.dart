import 'dart:async';

// ignore: unused_import
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
// ignore: unused_import
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_flutter.dart';

import 'wallet_screen.dart';

part 'wallet_screen_wm.g.dart';

// @LazySingleton(dispose: disposeWalletScreenWm)
class WalletScreenWm = _WalletScreenWmBase with _$WalletScreenWm;

abstract class _WalletScreenWmBase extends MobxWM<WalletScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  late final balance = apiService.walletBalance().obs();
  final apiService = locator<ApiService>();

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => 'wm.balance = ${balance.value}',
      ],
      logger,
    );
  }
}

Future<void> disposeWalletScreenWm(WalletScreenWm instance) async => instance.dispose();
