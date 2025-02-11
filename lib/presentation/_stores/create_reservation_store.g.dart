// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reservation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateReservationStore on CreateReservationBase, Store {
  Computed<double>? _$totalComputed;

  @override
  double get total => (_$totalComputed ??= Computed<double>(() => super.total,
          name: 'CreateReservationBase.total'))
      .value;

  late final _$carWashAtom =
      Atom(name: 'CreateReservationBase.carWash', context: reactiveContext);

  @override
  CarWash? get carWash {
    _$carWashAtom.reportRead();
    return super.carWash;
  }

  @override
  set carWash(CarWash? value) {
    _$carWashAtom.reportWrite(value, super.carWash, () {
      super.carWash = value;
    });
  }

  late final _$commentAtom =
      Atom(name: 'CreateReservationBase.comment', context: reactiveContext);

  @override
  String? get comment {
    _$commentAtom.reportRead();
    return super.comment;
  }

  @override
  set comment(String? value) {
    _$commentAtom.reportWrite(value, super.comment, () {
      super.comment = value;
    });
  }

  late final _$timeSlotAtom =
      Atom(name: 'CreateReservationBase.timeSlot', context: reactiveContext);

  @override
  TimeSlot? get timeSlot {
    _$timeSlotAtom.reportRead();
    return super.timeSlot;
  }

  @override
  set timeSlot(TimeSlot? value) {
    _$timeSlotAtom.reportWrite(value, super.timeSlot, () {
      super.timeSlot = value;
    });
  }

  late final _$carAtom =
      Atom(name: 'CreateReservationBase.car', context: reactiveContext);

  @override
  Car? get car {
    _$carAtom.reportRead();
    return super.car;
  }

  @override
  set car(Car? value) {
    _$carAtom.reportWrite(value, super.car, () {
      super.car = value;
    });
  }

  late final _$CreateReservationBaseActionController =
      ActionController(name: 'CreateReservationBase', context: reactiveContext);

  @override
  void setCarWash(CarWash carWash) {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.setCarWash');
    try {
      return super.setCarWash(carWash);
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComment(String comment) {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.setComment');
    try {
      return super.setComment(comment);
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTimeSlot(TimeSlot timeSlot) {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.setTimeSlot');
    try {
      return super.setTimeSlot(timeSlot);
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCar(Car car) {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.setCar');
    try {
      return super.setCar(car);
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCleaningOptions(List<CleaningOption> cleaningOptions) {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.setCleaningOptions');
    try {
      return super.setCleaningOptions(cleaningOptions);
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$CreateReservationBaseActionController.startAction(
        name: 'CreateReservationBase.reset');
    try {
      return super.reset();
    } finally {
      _$CreateReservationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carWash: ${carWash},
comment: ${comment},
timeSlot: ${timeSlot},
car: ${car},
total: ${total}
    ''';
  }
}
