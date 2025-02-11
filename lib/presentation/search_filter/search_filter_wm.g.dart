// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchFilterWm on _SearchFilterWmBase, Store {
  late final _$isCitiesLoadingAtom = Atom(
      name: '_SearchFilterWmBase.isCitiesLoading', context: reactiveContext);

  @override
  bool get isCitiesLoading {
    _$isCitiesLoadingAtom.reportRead();
    return super.isCitiesLoading;
  }

  @override
  set isCitiesLoading(bool value) {
    _$isCitiesLoadingAtom.reportWrite(value, super.isCitiesLoading, () {
      super.isCitiesLoading = value;
    });
  }

  late final _$selectedCityAtom =
      Atom(name: '_SearchFilterWmBase.selectedCity', context: reactiveContext);

  @override
  City? get selectedCity {
    _$selectedCityAtom.reportRead();
    return super.selectedCity;
  }

  @override
  set selectedCity(City? value) {
    _$selectedCityAtom.reportWrite(value, super.selectedCity, () {
      super.selectedCity = value;
    });
  }

  late final _$sortByAtom =
      Atom(name: '_SearchFilterWmBase.sortBy', context: reactiveContext);

  @override
  SearchSortBy get sortBy {
    _$sortByAtom.reportRead();
    return super.sortBy;
  }

  @override
  set sortBy(SearchSortBy value) {
    _$sortByAtom.reportWrite(value, super.sortBy, () {
      super.sortBy = value;
    });
  }

  late final _$ratingAtom =
      Atom(name: '_SearchFilterWmBase.rating', context: reactiveContext);

  @override
  double? get rating {
    _$ratingAtom.reportRead();
    return super.rating;
  }

  @override
  set rating(double? value) {
    _$ratingAtom.reportWrite(value, super.rating, () {
      super.rating = value;
    });
  }

  late final _$fetchCitiesAsyncAction =
      AsyncAction('_SearchFilterWmBase.fetchCities', context: reactiveContext);

  @override
  Future<void> fetchCities() {
    return _$fetchCitiesAsyncAction.run(() => super.fetchCities());
  }

  late final _$_SearchFilterWmBaseActionController =
      ActionController(name: '_SearchFilterWmBase', context: reactiveContext);

  @override
  void setSortBy(SearchSortBy value) {
    final _$actionInfo = _$_SearchFilterWmBaseActionController.startAction(
        name: '_SearchFilterWmBase.setSortBy');
    try {
      return super.setSortBy(value);
    } finally {
      _$_SearchFilterWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRating(double? value) {
    final _$actionInfo = _$_SearchFilterWmBaseActionController.startAction(
        name: '_SearchFilterWmBase.setRating');
    try {
      return super.setRating(value);
    } finally {
      _$_SearchFilterWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedCity(City? value) {
    final _$actionInfo = _$_SearchFilterWmBaseActionController.startAction(
        name: '_SearchFilterWmBase.setSelectedCity');
    try {
      return super.setSelectedCity(value);
    } finally {
      _$_SearchFilterWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleCleaningOption(CleaningOptionsEnum? value) {
    final _$actionInfo = _$_SearchFilterWmBaseActionController.startAction(
        name: '_SearchFilterWmBase.toggleCleaningOption');
    try {
      return super.toggleCleaningOption(value);
    } finally {
      _$_SearchFilterWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isCitiesLoading: ${isCitiesLoading},
selectedCity: ${selectedCity},
sortBy: ${sortBy},
rating: ${rating}
    ''';
  }
}
