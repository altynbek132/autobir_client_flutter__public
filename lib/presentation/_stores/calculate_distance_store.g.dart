// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_distance_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CalculateDistanceStore on CalculateDistanceBase, Store {
  Computed<double? Function(double?, double?)>? _$distanceToDeviceComputed;

  @override
  double? Function(double?, double?) get distanceToDevice =>
      (_$distanceToDeviceComputed ??=
              Computed<double? Function(double?, double?)>(
                  () => super.distanceToDevice,
                  name: 'CalculateDistanceBase.distanceToDevice'))
          .value;
  Computed<double? Function(double?, double?)>? _$timeToDeviceComputed;

  @override
  double? Function(double?, double?) get timeToDevice =>
      (_$timeToDeviceComputed ??= Computed<double? Function(double?, double?)>(
              () => super.timeToDevice,
              name: 'CalculateDistanceBase.timeToDevice'))
          .value;

  late final _$deviceLocationAtom = Atom(
      name: 'CalculateDistanceBase.deviceLocation', context: reactiveContext);

  @override
  Position? get deviceLocation {
    _$deviceLocationAtom.reportRead();
    return super.deviceLocation;
  }

  @override
  set deviceLocation(Position? value) {
    _$deviceLocationAtom.reportWrite(value, super.deviceLocation, () {
      super.deviceLocation = value;
    });
  }

  late final _$CalculateDistanceBaseActionController =
      ActionController(name: 'CalculateDistanceBase', context: reactiveContext);

  @override
  void startLocationStream() {
    final _$actionInfo = _$CalculateDistanceBaseActionController.startAction(
        name: 'CalculateDistanceBase.startLocationStream');
    try {
      return super.startLocationStream();
    } finally {
      _$CalculateDistanceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopLocationStream() {
    final _$actionInfo = _$CalculateDistanceBaseActionController.startAction(
        name: 'CalculateDistanceBase.stopLocationStream');
    try {
      return super.stopLocationStream();
    } finally {
      _$CalculateDistanceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
deviceLocation: ${deviceLocation},
distanceToDevice: ${distanceToDevice},
timeToDevice: ${timeToDevice}
    ''';
  }
}
