import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/create_reservation_store.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'car_wash.dart';

part 'car_wash_wm.g.dart';

enum FetchTimeSlotsState { loading, success, error }

class CarWashWm = _CarWashWmBase with _$CarWashWm;

abstract class _CarWashWmBase extends MobxWM<CarWashScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    carWash = widget.carWash;
    _apiService = locator<ApiService>();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final FocusNode focusNode = FocusNode();

  late final CarWash carWash;

  final commentController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  final ObserverList<TimeSlot> timeSlots = ObserverList<TimeSlot>();

  @observable
  TimeSlot? selectedTimeSlot;

  @observable
  DateTime dateTab = DateTime.now();

  @observable
  FetchTimeSlotsState timeSlotsState = FetchTimeSlotsState.loading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void changeSelectedTimeSlot(TimeSlot? timeSlot) => selectedTimeSlot = timeSlot;

  @action
  void changeDateTab(DateTime date) => dateTab = date;

  @action
  Future<void> fetchTimeSlots() async {
    timeSlotsState = FetchTimeSlotsState.loading;
    try {
      final timeSlotResponse = await _apiService.getCarWashTimeSlots(
        id: carWash.id,
        page: 1,
        perPage: 100,
      );

      timeSlots.clear();
      for (final t in timeSlotResponse.data) {
        timeSlots.add(t);
      }

      timeSlotsState = FetchTimeSlotsState.success;
    } on Exception catch (_) {
      timeSlotsState = FetchTimeSlotsState.error;
      rethrow;
    }
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  void onProceedPressed() {
    focusNode.unfocus();

    if (selectedTimeSlot == null) {
      showSnackbar(context, 'Выберите дату и время');
      return;
    } else {
      locator<CreateReservationStore>().setTimeSlot(selectedTimeSlot!);
      locator<CreateReservationStore>().setCarWash(carWash);
      if (commentController.text.isNotEmpty) locator<CreateReservationStore>().setComment(commentController.text);

      context.router.push(SelectCarRoute());
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

Future<void> disposeCarWashWm(CarWashWm instance) async => instance.dispose();
