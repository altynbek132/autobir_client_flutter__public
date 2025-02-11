// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchFilterStore on SearchFilterBase, Store {
  late final _$nameAtom =
      Atom(name: 'SearchFilterBase.name', context: reactiveContext);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$ratingAtom =
      Atom(name: 'SearchFilterBase.rating', context: reactiveContext);

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

  late final _$latAtom =
      Atom(name: 'SearchFilterBase.lat', context: reactiveContext);

  @override
  double? get lat {
    _$latAtom.reportRead();
    return super.lat;
  }

  @override
  set lat(double? value) {
    _$latAtom.reportWrite(value, super.lat, () {
      super.lat = value;
    });
  }

  late final _$lngAtom =
      Atom(name: 'SearchFilterBase.lng', context: reactiveContext);

  @override
  double? get lng {
    _$lngAtom.reportRead();
    return super.lng;
  }

  @override
  set lng(double? value) {
    _$lngAtom.reportWrite(value, super.lng, () {
      super.lng = value;
    });
  }

  late final _$sortByAtom =
      Atom(name: 'SearchFilterBase.sortBy', context: reactiveContext);

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

  late final _$priceMinAtom =
      Atom(name: 'SearchFilterBase.priceMin', context: reactiveContext);

  @override
  double? get priceMin {
    _$priceMinAtom.reportRead();
    return super.priceMin;
  }

  @override
  set priceMin(double? value) {
    _$priceMinAtom.reportWrite(value, super.priceMin, () {
      super.priceMin = value;
    });
  }

  late final _$priceMaxAtom =
      Atom(name: 'SearchFilterBase.priceMax', context: reactiveContext);

  @override
  double? get priceMax {
    _$priceMaxAtom.reportRead();
    return super.priceMax;
  }

  @override
  set priceMax(double? value) {
    _$priceMaxAtom.reportWrite(value, super.priceMax, () {
      super.priceMax = value;
    });
  }

  late final _$cityAtom =
      Atom(name: 'SearchFilterBase.city', context: reactiveContext);

  @override
  City? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(City? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$SearchFilterBaseActionController =
      ActionController(name: 'SearchFilterBase', context: reactiveContext);

  @override
  void setName(String? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRating(double? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setRating');
    try {
      return super.setRating(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCleaningOption(List<CleaningOptionsEnum> value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setCleaningOption');
    try {
      return super.setCleaningOption(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLat(double? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setLat');
    try {
      return super.setLat(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLng(double? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setLng');
    try {
      return super.setLng(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSortBy(SearchSortBy value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setSortBy');
    try {
      return super.setSortBy(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPriceMin(double? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setPriceMin');
    try {
      return super.setPriceMin(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPriceMax(double? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setPriceMax');
    try {
      return super.setPriceMax(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCity(City? value) {
    final _$actionInfo = _$SearchFilterBaseActionController.startAction(
        name: 'SearchFilterBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$SearchFilterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
rating: ${rating},
lat: ${lat},
lng: ${lng},
sortBy: ${sortBy},
priceMin: ${priceMin},
priceMax: ${priceMax},
city: ${city}
    ''';
  }
}
