import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/presentation/_stores/cities_store.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'car_wash_list.dart';

part 'car_wash_list_wm.g.dart';

class CarWashListWm = _CarWashListWmBase with _$CarWashListWm;

abstract class _CarWashListWmBase extends MobxWM<CarWashListScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    pagingController.addPageRequestListener((pageKey) {
      setCurrentPage((pageKey ~/ perPage) + 1);
      fetchPage(pageKey);
    });
    super.initWidgetModel();
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  static const int perPage = 15;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int? total;

  @observable
  PagingController<int, CarWash> pagingController = PagingController(firstPageKey: 0);

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void setCurrentPage(int page) => currentPage = page;

  @action
  void setTotal(int value) => total = value;

  @action
  Future<void> fetchPage(int pageKey) async {
    try {
      final citiesStore = locator<CitiesStore>();
      final carWashListResult = await _apiService.getCarWashes(
        page: currentPage,
        perPage: perPage,
        cityId: citiesStore.selectedCityId.value,
      );
      final isLastPage = carWashListResult.lastPage == currentPage;
      if (isLastPage) {
        pagingController.appendLastPage(carWashListResult.data);
      } else {
        final nextPageKey = pageKey + carWashListResult.data.length;
        pagingController.appendPage(carWashListResult.data, nextPageKey);
      }

      /// set total number of items
      setTotal(carWashListResult.total);
    } catch (error) {
      pagingController.error = error;
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

Future<void> disposeCarWashListWm(CarWashListWm instance) async => instance.dispose();
