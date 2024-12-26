import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/search/utils/recent_items_extension.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'search.dart';

part 'search_wm.g.dart';

class SearchWm = _SearchWmBase with _$SearchWm;

abstract class _SearchWmBase extends MobxWM<SearchScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    searchFilterStore = widget.searchFilterStore ?? SearchFilterStore();

    storageService = locator<KeyValueStorageService>();
    getLatestSearchQueries = ObservableFuture(storageService.getRecentlySearchedQueries());
    getRecentlyViewedCarWashes = ObservableFuture(storageService.getRecentlyViewedCarWashes());
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  late final KeyValueStorageService storageService;

  late final SearchFilterStore searchFilterStore;

  final FocusNode focusNode = FocusNode();

  final searchController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  ObservableFuture<List<String>> getLatestSearchQueries = ObservableFuture.value([]);

  @observable
  ObservableFuture<List<CarWash>> getRecentlyViewedCarWashes = ObservableFuture.value([]);

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void resetGetLatestSearchQueries() {
    getLatestSearchQueries = ObservableFuture(storageService.getRecentlySearchedQueries());
  }

  @action
  void resetGetRecentlyViewedCarWashes() {
    getRecentlyViewedCarWashes = ObservableFuture(storageService.getRecentlyViewedCarWashes());
  }

  @action
  void onFilterButtonPressed() {
    focusNode.unfocus();

    // update search filter store
    if (searchController.text.isNotEmpty) searchFilterStore.setName(searchController.text);

    context.pushRoute(SearchFilterRoute(searchFilterStore: searchFilterStore));
  }

  @action
  void onSearchSubmitted(String value) {
    focusNode.unfocus();

    /// update search filter store
    if (value.isNotEmpty && searchFilterStore.name != value) searchFilterStore.setName(value);
    if (value.isEmpty && searchFilterStore.name != null) searchFilterStore.setName(null);

    context.pushRoute(SearchResultsRoute(searchFilterStore: searchFilterStore)).then((_) {
      /// update observable futures
      resetGetLatestSearchQueries();
      resetGetRecentlyViewedCarWashes();
    });

    /// add searched query to recently searched queries
    if (value.isNotEmpty) storageService.addRecentlySearchedQuery(value);
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

Future<void> disposeSearchCarWashesWm(SearchWm instance) async => instance.dispose();
