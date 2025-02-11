// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_car_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddCarWm on _AddCarWmBase, Store {
  late final _$carTypeIdAtom =
      Atom(name: '_AddCarWmBase.carTypeId', context: reactiveContext);

  @override
  int? get carTypeId {
    _$carTypeIdAtom.reportRead();
    return super.carTypeId;
  }

  @override
  set carTypeId(int? value) {
    _$carTypeIdAtom.reportWrite(value, super.carTypeId, () {
      super.carTypeId = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_AddCarWmBase.isLoading', context: reactiveContext);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$addCarAsyncAction =
      AsyncAction('_AddCarWmBase.addCar', context: reactiveContext);

  @override
  Future<void> addCar() {
    return _$addCarAsyncAction.run(() => super.addCar());
  }

  late final _$_AddCarWmBaseActionController =
      ActionController(name: '_AddCarWmBase', context: reactiveContext);

  @override
  void setCarTypeId(int? value) {
    final _$actionInfo = _$_AddCarWmBaseActionController.startAction(
        name: '_AddCarWmBase.setCarTypeId');
    try {
      return super.setCarTypeId(value);
    } finally {
      _$_AddCarWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carTypeId: ${carTypeId},
isLoading: ${isLoading}
    ''';
  }
}
