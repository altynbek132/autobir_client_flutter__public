// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_cars_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyCarsWm on _MyCarsWmBase, Store {
  late final _$stateAtom =
      Atom(name: '_MyCarsWmBase.state', context: reactiveContext);

  @override
  MyCarsState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(MyCarsState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchUserCarsAsyncAction =
      AsyncAction('_MyCarsWmBase.fetchUserCars', context: reactiveContext);

  @override
  Future<void> fetchUserCars() {
    return _$fetchUserCarsAsyncAction.run(() => super.fetchUserCars());
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
