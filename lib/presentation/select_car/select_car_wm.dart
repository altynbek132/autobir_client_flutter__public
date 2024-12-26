import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/create_reservation_store.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'select_car.dart';

part 'select_car_wm.g.dart';

enum SelectCarState { loading, success, error }

class SelectCarWm = _SelectCarWmBase with _$SelectCarWm;

abstract class _SelectCarWmBase extends MobxWM<SelectCarScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    selectedCar = locator<CreateReservationStore>().car;
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
  Car? selectedCar;

  @observable
  SelectCarState state = SelectCarState.loading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void onCarTap(Car car) {
    if (selectedCar == car) {
      selectedCar = null;
    } else {
      selectedCar = car;
    }
  }

  @action
  Future<void> fetchUserCars() async {
    state = SelectCarState.loading;

    try {
      final searchListResults = await _apiService.getCars(
        page: 1,
        perPage: 100,
      );

      carsList.clear();
      carsList.addAll(searchListResults.data);

      state = SelectCarState.success;
    } on Exception catch (e) {
      logger.e(e);
      state = SelectCarState.error;
      if (context.mounted) showErrorSnackBar(context, e);
    } finally {}
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  void onProceedPressed() {
    if (selectedCar != null) {
      locator<CreateReservationStore>().setCar(selectedCar!);
      context.pushRoute(SelectCleaningOptionsRoute());
    } else {
      showSnackbar(context, 'Выберите автомобиль');
    }
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

Future<void> disposeSelectCarWm(SelectCarWm instance) async => instance.dispose();
