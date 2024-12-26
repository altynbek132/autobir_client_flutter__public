import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/presentation/_stores/cities_store.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'popular_list.dart';

part 'popular_list_wm.g.dart';

enum PopularListState {
  firstPageLoading,
  success,
  error,
}

class PopularListWm = _PopularListWmBase with _$PopularListWm;

abstract class _PopularListWmBase extends MobxWM<PopularListScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    perPage = widget.perPage ?? 15;
    _apiService = locator<ApiService>();
    pagingController.addPageRequestListener((pageKey) {
      setCurrentPage((pageKey ~/ perPage) + 1);
      fetchPage(pageKey);
    });
    citySelectedStream.listen(
      (_) {
        pagingController.refresh();
      },
    );
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

  late final int perPage;
  final citiesStore = locator<CitiesStore>();

  // PROXY --------------------------------------------------------------------

  final citySelectedStream = locator<CitiesStore>().selectedCityId.toStream().distinct();

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int? total;

  @observable
  PagingController<int, CarWash> pagingController = PagingController(firstPageKey: 0);

  @observable
  PopularListState state = PopularListState.firstPageLoading;

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
      final searchListResults = await _apiService.getPopularCarWashes(
        page: currentPage,
        perPage: perPage,
        cityId: citiesStore.selectedCity.value?.id,
      );
      final isLastPage = searchListResults.lastPage == currentPage;
      if (isLastPage) {
        pagingController.appendLastPage(searchListResults.data);
      } else {
        final nextPageKey = pageKey + searchListResults.data.length;
        pagingController.appendPage(searchListResults.data, nextPageKey);
      }

      /// set total number of items
      setTotal(searchListResults.total);

      // update state
      state = PopularListState.success;
    } catch (error) {
      state = PopularListState.error;
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

Future<void> disposePopularListWm(PopularListWm instance) async => instance.dispose();
