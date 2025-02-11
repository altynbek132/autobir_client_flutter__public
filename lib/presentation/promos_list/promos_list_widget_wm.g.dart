// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promos_list_widget_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PromosListWidgetWm on _PromosListWidgetWmBase, Store {
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??= Computed<bool>(() => super.hasData,
          name: '_PromosListWidgetWmBase.hasData'))
      .value;
  Computed<int>? _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??= Computed<int>(() => super.length,
          name: '_PromosListWidgetWmBase.length'))
      .value;

  late final _$stateAtom =
      Atom(name: '_PromosListWidgetWmBase.state', context: reactiveContext);

  @override
  PromosListWidgetState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(PromosListWidgetState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchFirstPageAsyncAction = AsyncAction(
      '_PromosListWidgetWmBase.fetchFirstPage',
      context: reactiveContext);

  @override
  Future<void> fetchFirstPage() {
    return _$fetchFirstPageAsyncAction.run(() => super.fetchFirstPage());
  }

  @override
  String toString() {
    return '''
state: ${state},
hasData: ${hasData},
length: ${length}
    ''';
  }
}
