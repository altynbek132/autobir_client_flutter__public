import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'search_results.dart';

part 'search_results_wm.g.dart';

enum SearchResultsState {
  firstPageLoading,
  success,
  firstPageError,
  nextPageError,
}

// @LazySingleton(dispose: disposeSearchCarWashesResultsWm)
class SearchResultsWm = _SearchResultsWmBase with _$SearchResultsWm;

abstract class _SearchResultsWmBase extends MobxWM<SearchResultsScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    searchFilterStore = widget.searchFilterStore;
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

  late final SearchFilterStore searchFilterStore;

  final int perPage = 15;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int? total;

  @observable
  PagingController<int, CarWash> pagingController = PagingController(firstPageKey: 0);

  @observable
  SearchResultsState state = SearchResultsState.firstPageLoading;

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
      final searchListResults = await _apiService.searchCarWashes(CarWashSearchRequest(
        page: currentPage,
        perPage: perPage,
        name: searchFilterStore.name,
        rating: searchFilterStore.rating,
        cleaningOptions: searchFilterStore.cleaningOptions.isNotEmpty
            ? searchFilterStore.cleaningOptions.map((e) => e.name).toList()
            : null,
        lat: searchFilterStore.lat,
        lng: searchFilterStore.lng,
        sortBy: searchFilterStore.sortBy.toString().split('.').last,
        cityId: searchFilterStore.city?.id,
      ));
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
      state = SearchResultsState.success;
    } catch (error) {
      if (pageKey == 1) {
        state = SearchResultsState.firstPageError;
      } else {
        state = SearchResultsState.nextPageError;
      }
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

Future<void> disposeSearchCarWashesResultsWm(SearchResultsWm instance) async => instance.dispose();
