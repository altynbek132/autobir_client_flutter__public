// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAccountWm on _CreateAccountWmBase, Store {
  late final _$isPasswordVisibleAtom = Atom(
      name: '_CreateAccountWmBase.isPasswordVisible', context: reactiveContext);

  @override
  bool get isPasswordVisible {
    _$isPasswordVisibleAtom.reportRead();
    return super.isPasswordVisible;
  }

  @override
  set isPasswordVisible(bool value) {
    _$isPasswordVisibleAtom.reportWrite(value, super.isPasswordVisible, () {
      super.isPasswordVisible = value;
    });
  }

  late final _$isAgreementCheckedAtom = Atom(
      name: '_CreateAccountWmBase.isAgreementChecked',
      context: reactiveContext);

  @override
  bool get isAgreementChecked {
    _$isAgreementCheckedAtom.reportRead();
    return super.isAgreementChecked;
  }

  @override
  set isAgreementChecked(bool value) {
    _$isAgreementCheckedAtom.reportWrite(value, super.isAgreementChecked, () {
      super.isAgreementChecked = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CreateAccountWmBase.isLoading', context: reactiveContext);

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

  late final _$registerButtonPressedAsyncAction = AsyncAction(
      '_CreateAccountWmBase.registerButtonPressed',
      context: reactiveContext);

  @override
  Future<void> registerButtonPressed() {
    return _$registerButtonPressedAsyncAction
        .run(() => super.registerButtonPressed());
  }

  late final _$_CreateAccountWmBaseActionController =
      ActionController(name: '_CreateAccountWmBase', context: reactiveContext);

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_CreateAccountWmBaseActionController.startAction(
        name: '_CreateAccountWmBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_CreateAccountWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleAgreement() {
    final _$actionInfo = _$_CreateAccountWmBaseActionController.startAction(
        name: '_CreateAccountWmBase.toggleAgreement');
    try {
      return super.toggleAgreement();
    } finally {
      _$_CreateAccountWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPasswordVisible: ${isPasswordVisible},
isAgreementChecked: ${isAgreementChecked},
isLoading: ${isLoading}
    ''';
  }
}
