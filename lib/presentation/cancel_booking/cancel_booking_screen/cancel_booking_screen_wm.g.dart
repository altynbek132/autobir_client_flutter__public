// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_booking_screen_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CancelBookingScreenWm on _CancelBookingScreenWmBase, Store {
  Computed<bool>? _$isOtherReasonSelectedComputed;

  @override
  bool get isOtherReasonSelected => (_$isOtherReasonSelectedComputed ??=
          Computed<bool>(() => super.isOtherReasonSelected,
              name: '_CancelBookingScreenWmBase.isOtherReasonSelected'))
      .value;
  Computed<bool>? _$canConfirmComputed;

  @override
  bool get canConfirm =>
      (_$canConfirmComputed ??= Computed<bool>(() => super.canConfirm,
              name: '_CancelBookingScreenWmBase.canConfirm'))
          .value;

  late final _$selectedReasonAtom = Atom(
      name: '_CancelBookingScreenWmBase.selectedReason',
      context: reactiveContext);

  @override
  String? get selectedReason {
    _$selectedReasonAtom.reportRead();
    return super.selectedReason;
  }

  @override
  set selectedReason(String? value) {
    _$selectedReasonAtom.reportWrite(value, super.selectedReason, () {
      super.selectedReason = value;
    });
  }

  late final _$otherReasonAtom = Atom(
      name: '_CancelBookingScreenWmBase.otherReason', context: reactiveContext);

  @override
  String get otherReason {
    _$otherReasonAtom.reportRead();
    return super.otherReason;
  }

  @override
  set otherReason(String value) {
    _$otherReasonAtom.reportWrite(value, super.otherReason, () {
      super.otherReason = value;
    });
  }

  late final _$_CancelBookingScreenWmBaseActionController = ActionController(
      name: '_CancelBookingScreenWmBase', context: reactiveContext);

  @override
  void selectReason(String reason) {
    final _$actionInfo = _$_CancelBookingScreenWmBaseActionController
        .startAction(name: '_CancelBookingScreenWmBase.selectReason');
    try {
      return super.selectReason(reason);
    } finally {
      _$_CancelBookingScreenWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOtherReason(String reason) {
    final _$actionInfo = _$_CancelBookingScreenWmBaseActionController
        .startAction(name: '_CancelBookingScreenWmBase.setOtherReason');
    try {
      return super.setOtherReason(reason);
    } finally {
      _$_CancelBookingScreenWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedReason: ${selectedReason},
otherReason: ${otherReason},
isOtherReasonSelected: ${isOtherReasonSelected},
canConfirm: ${canConfirm}
    ''';
  }
}
