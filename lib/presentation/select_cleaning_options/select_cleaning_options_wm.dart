import 'dart:async';

import 'package:api_client/api_client.dart';
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

import 'select_cleaning_options.dart';

part 'select_cleaning_options_wm.g.dart';

enum SelectCleaningOptionsState { loading, success, error }

class SelectCleaningOptionsWm = _SelectCleaningOptionsWmBase with _$SelectCleaningOptionsWm;

abstract class _SelectCleaningOptionsWmBase extends MobxWM<SelectCleaningOptionsScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    carWashId = locator<CreateReservationStore>().carWash?.id;
    carTypeId = locator<CreateReservationStore>().car?.carTypeId;
    selectedCleaningOptions.addAll(locator<CreateReservationStore>().cleaningOptions);
    fetchCleaningOptions();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  late final int? carWashId;

  late final int? carTypeId;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  final ObservableList<CleaningOption> cleaningOptions = ObservableList<CleaningOption>();

  final ObservableList<CleaningOption> selectedCleaningOptions = ObservableList<CleaningOption>();

  @observable
  SelectCleaningOptionsState state = SelectCleaningOptionsState.loading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void onCleaningOptionTap(CleaningOption option) {
    if (selectedCleaningOptions.contains(option)) {
      selectedCleaningOptions.remove(option);
    } else {
      selectedCleaningOptions.add(option);
    }
  }

  @action
  Future<void> fetchCleaningOptions() async {
    state = SelectCleaningOptionsState.loading;

    try {
      if (carWashId == null || carTypeId == null) throw Exception('Не удалось получить данные для выбора услуг');

      final CleaningOptionsResponse cleaningOptionsResponse = await _apiService.getCleaningOptions(
        carWashId: carWashId!,
        carTypeId: carTypeId!,
        page: 1,
        perPage: 100,
      );

      cleaningOptions.clear();
      cleaningOptions.addAll(cleaningOptionsResponse.data);

      state = SelectCleaningOptionsState.success;
    } on Exception catch (e) {
      logger.e(e);
      state = SelectCleaningOptionsState.error;
      if (context.mounted) showErrorSnackBar(context, e);
    } finally {}
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  void onProceedPressed() {
    if (selectedCleaningOptions.isNotEmpty) {
      locator<CreateReservationStore>().setCleaningOptions(selectedCleaningOptions);
      context.pushRoute(PreviewRoute());
    } else {
      showSnackbar(context, 'Выберите хотя бы одну услугу');
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

Future<void> disposeSelectCleaningOptionsWm(SelectCleaningOptionsWm instance) async => instance.dispose();
