// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_car_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SelectCarWm on _SelectCarWmBase, Store {
  late final _$selectedCarAtom =
      Atom(name: '_SelectCarWmBase.selectedCar', context: reactiveContext);

  @override
  Car? get selectedCar {
    _$selectedCarAtom.reportRead();
    return super.selectedCar;
  }

  @override
  set selectedCar(Car? value) {
    _$selectedCarAtom.reportWrite(value, super.selectedCar, () {
      super.selectedCar = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_SelectCarWmBase.state', context: reactiveContext);

  @override
  SelectCarState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(SelectCarState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchUserCarsAsyncAction =
      AsyncAction('_SelectCarWmBase.fetchUserCars', context: reactiveContext);

  @override
  Future<void> fetchUserCars() {
    return _$fetchUserCarsAsyncAction.run(() => super.fetchUserCars());
  }

  late final _$_SelectCarWmBaseActionController =
      ActionController(name: '_SelectCarWmBase', context: reactiveContext);

  @override
  void onCarTap(Car car) {
    final _$actionInfo = _$_SelectCarWmBaseActionController.startAction(
        name: '_SelectCarWmBase.onCarTap');
    try {
      return super.onCarTap(car);
    } finally {
      _$_SelectCarWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCar: ${selectedCar},
state: ${state}
    ''';
  }
}
