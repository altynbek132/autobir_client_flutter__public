// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_wash_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarWashWm on _CarWashWmBase, Store {
  late final _$selectedTimeSlotAtom =
      Atom(name: '_CarWashWmBase.selectedTimeSlot', context: reactiveContext);

  @override
  TimeSlot? get selectedTimeSlot {
    _$selectedTimeSlotAtom.reportRead();
    return super.selectedTimeSlot;
  }

  @override
  set selectedTimeSlot(TimeSlot? value) {
    _$selectedTimeSlotAtom.reportWrite(value, super.selectedTimeSlot, () {
      super.selectedTimeSlot = value;
    });
  }

  late final _$dateTabAtom =
      Atom(name: '_CarWashWmBase.dateTab', context: reactiveContext);

  @override
  DateTime get dateTab {
    _$dateTabAtom.reportRead();
    return super.dateTab;
  }

  @override
  set dateTab(DateTime value) {
    _$dateTabAtom.reportWrite(value, super.dateTab, () {
      super.dateTab = value;
    });
  }

  late final _$timeSlotsStateAtom =
      Atom(name: '_CarWashWmBase.timeSlotsState', context: reactiveContext);

  @override
  FetchTimeSlotsState get timeSlotsState {
    _$timeSlotsStateAtom.reportRead();
    return super.timeSlotsState;
  }

  @override
  set timeSlotsState(FetchTimeSlotsState value) {
    _$timeSlotsStateAtom.reportWrite(value, super.timeSlotsState, () {
      super.timeSlotsState = value;
    });
  }

  late final _$fetchTimeSlotsAsyncAction =
      AsyncAction('_CarWashWmBase.fetchTimeSlots', context: reactiveContext);

  @override
  Future<void> fetchTimeSlots() {
    return _$fetchTimeSlotsAsyncAction.run(() => super.fetchTimeSlots());
  }

  late final _$_CarWashWmBaseActionController =
      ActionController(name: '_CarWashWmBase', context: reactiveContext);

  @override
  void changeSelectedTimeSlot(TimeSlot? timeSlot) {
    final _$actionInfo = _$_CarWashWmBaseActionController.startAction(
        name: '_CarWashWmBase.changeSelectedTimeSlot');
    try {
      return super.changeSelectedTimeSlot(timeSlot);
    } finally {
      _$_CarWashWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDateTab(DateTime date) {
    final _$actionInfo = _$_CarWashWmBaseActionController.startAction(
        name: '_CarWashWmBase.changeDateTab');
    try {
      return super.changeDateTab(date);
    } finally {
      _$_CarWashWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTimeSlot: ${selectedTimeSlot},
dateTab: ${dateTab},
timeSlotsState: ${timeSlotsState}
    ''';
  }
}
