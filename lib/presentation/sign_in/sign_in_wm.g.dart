// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInWm on _SignInWmBase, Store {
  late final _$isPasswordVisibleAtom =
      Atom(name: '_SignInWmBase.isPasswordVisible', context: reactiveContext);

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

  late final _$isLoadingAtom =
      Atom(name: '_SignInWmBase.isLoading', context: reactiveContext);

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

  late final _$loginPressedAsyncAction =
      AsyncAction('_SignInWmBase.loginPressed', context: reactiveContext);

  @override
  Future<void> loginPressed() {
    return _$loginPressedAsyncAction.run(() => super.loginPressed());
  }

  late final _$_SignInWmBaseActionController =
      ActionController(name: '_SignInWmBase', context: reactiveContext);

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_SignInWmBaseActionController.startAction(
        name: '_SignInWmBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_SignInWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPasswordVisible: ${isPasswordVisible},
isLoading: ${isLoading}
    ''';
  }
}
