import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/cities_store.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'search_filter.dart';

part 'search_filter_wm.g.dart';

class SearchFilterWm = _SearchFilterWmBase with _$SearchFilterWm;

abstract class _SearchFilterWmBase extends MobxWM<SearchFilterScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    fetchCities();

    searchFilterStore = widget.searchFilterStore;

    searchFilterStore.city ??= locator<CitiesStore>().selectedCity.value;

    // set initial values
    setSortBy(searchFilterStore.sortBy);
    setRating(searchFilterStore.rating);
    setSelectedCity(searchFilterStore.city);
    for (final cleaningOption in searchFilterStore.cleaningOptions) {
      toggleCleaningOption(cleaningOption);
    }
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  late final SearchFilterStore searchFilterStore;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  bool isCitiesLoading = false;

  final cities = ObservableList<City>();

  @observable
  City? selectedCity;

  @observable
  SearchSortBy sortBy = SearchSortBy.popular;

  @observable
  double? rating;

  final ObservableList<CleaningOptionsEnum> cleaningOptions = ObservableList<CleaningOptionsEnum>();

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> fetchCities() async {
    try {
      isCitiesLoading = true;
      final citiesResponse = await _apiService.getCities();
      cities.clear();
      cities.addAll(citiesResponse);
    } catch (_) {
      cities.clear();
    } finally {
      isCitiesLoading = false;
    }
  }

  @action
  void setSortBy(SearchSortBy value) => sortBy = value;

  @action
  void setRating(double? value) => rating = value;

  @action
  void setSelectedCity(City? value) => selectedCity = value;

  @action
  void toggleCleaningOption(CleaningOptionsEnum? value) {
    if (value == null) {
      cleaningOptions.clear();
      return;
    }
    if (cleaningOptions.contains(value)) {
      cleaningOptions.remove(value);
    } else {
      cleaningOptions.add(value);
    }
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  Future<void> onResetButtonPressed() async {
    /// reset search filter store
    searchFilterStore.setSortBy(SearchSortBy.popular);
    searchFilterStore.setRating(null);
    searchFilterStore.setCleaningOption([]);
    searchFilterStore.setCity(null);

    /// remove FilterScreen from stack and push to search results
    context.router.popAndPush(SearchResultsRoute(searchFilterStore: searchFilterStore));
  }

  Future<void> onApplyButtonPressed() async {
    /// update search filter store
    searchFilterStore.setSortBy(sortBy);
    searchFilterStore.setRating(rating);
    searchFilterStore.setCleaningOption(cleaningOptions);
    searchFilterStore.setCity(selectedCity);

    /// remove FilterScreen from stack and push to search results
    context.router.popAndPush(SearchResultsRoute(searchFilterStore: searchFilterStore));
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

Future<void> disposeFilterWm(SearchFilterWm instance) async => instance.dispose();
