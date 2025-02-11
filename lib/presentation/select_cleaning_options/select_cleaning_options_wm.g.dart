// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_cleaning_options_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SelectCleaningOptionsWm on _SelectCleaningOptionsWmBase, Store {
  late final _$stateAtom = Atom(
      name: '_SelectCleaningOptionsWmBase.state', context: reactiveContext);

  @override
  SelectCleaningOptionsState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(SelectCleaningOptionsState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchCleaningOptionsAsyncAction = AsyncAction(
      '_SelectCleaningOptionsWmBase.fetchCleaningOptions',
      context: reactiveContext);

  @override
  Future<void> fetchCleaningOptions() {
    return _$fetchCleaningOptionsAsyncAction
        .run(() => super.fetchCleaningOptions());
  }

  late final _$_SelectCleaningOptionsWmBaseActionController = ActionController(
      name: '_SelectCleaningOptionsWmBase', context: reactiveContext);

  @override
  void onCleaningOptionTap(CleaningOption option) {
    final _$actionInfo = _$_SelectCleaningOptionsWmBaseActionController
        .startAction(name: '_SelectCleaningOptionsWmBase.onCleaningOptionTap');
    try {
      return super.onCleaningOptionTap(option);
    } finally {
      _$_SelectCleaningOptionsWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
