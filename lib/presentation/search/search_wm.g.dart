// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchWm on _SearchWmBase, Store {
  late final _$getLatestSearchQueriesAtom = Atom(
      name: '_SearchWmBase.getLatestSearchQueries', context: reactiveContext);

  @override
  ObservableFuture<List<String>> get getLatestSearchQueries {
    _$getLatestSearchQueriesAtom.reportRead();
    return super.getLatestSearchQueries;
  }

  @override
  set getLatestSearchQueries(ObservableFuture<List<String>> value) {
    _$getLatestSearchQueriesAtom
        .reportWrite(value, super.getLatestSearchQueries, () {
      super.getLatestSearchQueries = value;
    });
  }

  late final _$getRecentlyViewedCarWashesAtom = Atom(
      name: '_SearchWmBase.getRecentlyViewedCarWashes',
      context: reactiveContext);

  @override
  ObservableFuture<List<CarWash>> get getRecentlyViewedCarWashes {
    _$getRecentlyViewedCarWashesAtom.reportRead();
    return super.getRecentlyViewedCarWashes;
  }

  @override
  set getRecentlyViewedCarWashes(ObservableFuture<List<CarWash>> value) {
    _$getRecentlyViewedCarWashesAtom
        .reportWrite(value, super.getRecentlyViewedCarWashes, () {
      super.getRecentlyViewedCarWashes = value;
    });
  }

  late final _$_SearchWmBaseActionController =
      ActionController(name: '_SearchWmBase', context: reactiveContext);

  @override
  void resetGetLatestSearchQueries() {
    final _$actionInfo = _$_SearchWmBaseActionController.startAction(
        name: '_SearchWmBase.resetGetLatestSearchQueries');
    try {
      return super.resetGetLatestSearchQueries();
    } finally {
      _$_SearchWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetGetRecentlyViewedCarWashes() {
    final _$actionInfo = _$_SearchWmBaseActionController.startAction(
        name: '_SearchWmBase.resetGetRecentlyViewedCarWashes');
    try {
      return super.resetGetRecentlyViewedCarWashes();
    } finally {
      _$_SearchWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onFilterButtonPressed() {
    final _$actionInfo = _$_SearchWmBaseActionController.startAction(
        name: '_SearchWmBase.onFilterButtonPressed');
    try {
      return super.onFilterButtonPressed();
    } finally {
      _$_SearchWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSearchSubmitted(String value) {
    final _$actionInfo = _$_SearchWmBaseActionController.startAction(
        name: '_SearchWmBase.onSearchSubmitted');
    try {
      return super.onSearchSubmitted(value);
    } finally {
      _$_SearchWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getLatestSearchQueries: ${getLatestSearchQueries},
getRecentlyViewedCarWashes: ${getRecentlyViewedCarWashes}
    ''';
  }
}
