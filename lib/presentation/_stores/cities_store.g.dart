// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CitiesStore on CitiesBase, Store {
  late final _$fetchCitiesAsyncAction =
      AsyncAction('CitiesBase.fetchCities', context: reactiveContext);

  @override
  Future<void> fetchCities() {
    return _$fetchCitiesAsyncAction.run(() => super.fetchCities());
  }

  late final _$CitiesBaseActionController =
      ActionController(name: 'CitiesBase', context: reactiveContext);

  @override
  void selectCity(City? city) {
    final _$actionInfo =
        _$CitiesBaseActionController.startAction(name: 'CitiesBase.selectCity');
    try {
      return super.selectCity(city);
    } finally {
      _$CitiesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
