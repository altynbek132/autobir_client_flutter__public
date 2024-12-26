import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'my_cars.dart';

part 'my_cars_wm.g.dart';

enum MyCarsState { loading, success, error }

class MyCarsWm = _MyCarsWmBase with _$MyCarsWm;

abstract class _MyCarsWmBase extends MobxWM<MyCarsScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    fetchUserCars();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  final ObservableList<Car> carsList = ObservableList<Car>();

  @observable
  MyCarsState state = MyCarsState.loading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> fetchUserCars() async {
    state = MyCarsState.loading;

    try {
      final searchListResults = await _apiService.getCars(
        page: 1,
        perPage: 100,
      );

      carsList.clear();
      carsList.addAll(searchListResults.data);

      state = MyCarsState.success;
    } on Exception catch (e) {
      logger.e(e);
      state = MyCarsState.error;
      if (context.mounted) showErrorSnackBar(context, e);
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

Future<void> disposeMyCarsWm(MyCarsWm instance) async => instance.dispose();
