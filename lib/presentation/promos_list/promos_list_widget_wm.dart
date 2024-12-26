import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'promos_list_widget.dart';

part 'promos_list_widget_wm.g.dart';

enum PromosListWidgetState { loading, success, error }

class PromosListWidgetWm = _PromosListWidgetWmBase with _$PromosListWidgetWm;

abstract class _PromosListWidgetWmBase extends MobxWM<PromosListWidget> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    fetchFirstPage();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final controller = PageController(viewportFraction: (302 + 12) / 375);

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  final promoCarWashes = ObservableList<CarWash>();

  @computed
  bool get hasData => promoCarWashes.isNotEmpty && state == PromosListWidgetState.success;

  @computed
  int get length => promoCarWashes.length;

  @observable
  PromosListWidgetState state = PromosListWidgetState.loading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> fetchFirstPage() async {
    try {
      final searchListResults = await _apiService.getPopularCarWashes(page: 1, perPage: 4);

      promoCarWashes.clear();
      promoCarWashes.addAll(searchListResults.data);

      // update state
      state = PromosListWidgetState.success;
    } catch (error) {
      logger.e(error);
      state = PromosListWidgetState.error;
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

Future<void> disposePromosListWidgetWm(PromosListWidgetWm instance) async => instance.dispose();
