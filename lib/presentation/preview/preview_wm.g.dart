// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PreviewWm on _PreviewWmBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_PreviewWmBase.isLoading', context: reactiveContext);

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

  late final _$postReservationAsyncAction =
      AsyncAction('_PreviewWmBase.postReservation', context: reactiveContext);

  @override
  Future<void> postReservation() {
    return _$postReservationAsyncAction.run(() => super.postReservation());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
