// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_code_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VerificationCodeWm on _VerificationCodeWmBase, Store {
  late final _$timerCountdownAtom = Atom(
      name: '_VerificationCodeWmBase.timerCountdown', context: reactiveContext);

  @override
  int? get timerCountdown {
    _$timerCountdownAtom.reportRead();
    return super.timerCountdown;
  }

  @override
  set timerCountdown(int? value) {
    _$timerCountdownAtom.reportWrite(value, super.timerCountdown, () {
      super.timerCountdown = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_VerificationCodeWmBase.isLoading', context: reactiveContext);

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

  late final _$sendButtonPressedAsyncAction = AsyncAction(
      '_VerificationCodeWmBase.sendButtonPressed',
      context: reactiveContext);

  @override
  Future<void> sendButtonPressed() {
    return _$sendButtonPressedAsyncAction.run(() => super.sendButtonPressed());
  }

  late final _$_VerificationCodeWmBaseActionController = ActionController(
      name: '_VerificationCodeWmBase', context: reactiveContext);

  @override
  void startTimer() {
    final _$actionInfo = _$_VerificationCodeWmBaseActionController.startAction(
        name: '_VerificationCodeWmBase.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_VerificationCodeWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timerCountdown: ${timerCountdown},
isLoading: ${isLoading}
    ''';
  }
}
