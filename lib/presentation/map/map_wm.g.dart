// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapWm on _MapWmBase, Store {
  late final _$devicePositionAtom =
      Atom(name: '_MapWmBase.devicePosition', context: reactiveContext);

  @override
  Position? get devicePosition {
    _$devicePositionAtom.reportRead();
    return super.devicePosition;
  }

  @override
  set devicePosition(Position? value) {
    _$devicePositionAtom.reportWrite(value, super.devicePosition, () {
      super.devicePosition = value;
    });
  }

  late final _$currentPageAtom =
      Atom(name: '_MapWmBase.currentPage', context: reactiveContext);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_MapWmBase.state', context: reactiveContext);

  @override
  MapState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(MapState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$clusterAtom =
      Atom(name: '_MapWmBase.cluster', context: reactiveContext);

  @override
  ClusterizedPlacemarkCollection? get cluster {
    _$clusterAtom.reportRead();
    return super.cluster;
  }

  @override
  set cluster(ClusterizedPlacemarkCollection? value) {
    _$clusterAtom.reportWrite(value, super.cluster, () {
      super.cluster = value;
    });
  }

  late final _$fetchDevicePositionAsyncAction =
      AsyncAction('_MapWmBase.fetchDevicePosition', context: reactiveContext);

  @override
  Future<void> fetchDevicePosition() {
    return _$fetchDevicePositionAsyncAction
        .run(() => super.fetchDevicePosition());
  }

  late final _$fetchCarWashesAsyncAction =
      AsyncAction('_MapWmBase.fetchCarWashes', context: reactiveContext);

  @override
  Future<void> fetchCarWashes() {
    return _$fetchCarWashesAsyncAction.run(() => super.fetchCarWashes());
  }

  late final _$_MapWmBaseActionController =
      ActionController(name: '_MapWmBase', context: reactiveContext);

  @override
  void updateCluster() {
    final _$actionInfo = _$_MapWmBaseActionController.startAction(
        name: '_MapWmBase.updateCluster');
    try {
      return super.updateCluster();
    } finally {
      _$_MapWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPlacemark(PlacemarkMapObject placemarkMapObject) {
    final _$actionInfo = _$_MapWmBaseActionController.startAction(
        name: '_MapWmBase.addPlacemark');
    try {
      return super.addPlacemark(placemarkMapObject);
    } finally {
      _$_MapWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
devicePosition: ${devicePosition},
currentPage: ${currentPage},
state: ${state},
cluster: ${cluster}
    ''';
  }
}
