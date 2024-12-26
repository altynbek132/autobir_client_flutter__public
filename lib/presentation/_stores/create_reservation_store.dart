import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'create_reservation_store.g.dart';

@lazySingleton
class CreateReservationStore = CreateReservationBase with _$CreateReservationStore;

abstract class CreateReservationBase with Store {
  @observable
  CarWash? carWash;

  @observable
  String? comment;

  @observable
  TimeSlot? timeSlot;

  @observable
  Car? car;

  final ObservableList<CleaningOption> cleaningOptions = ObservableList<CleaningOption>();

  @computed
  double get total {
    return cleaningOptions.fold(0, (previousValue, element) => previousValue + (element.price ?? 0));
  }

  @action
  void setCarWash(CarWash carWash) => this.carWash = carWash;

  @action
  void setComment(String comment) => this.comment = comment;

  @action
  void setTimeSlot(TimeSlot timeSlot) => this.timeSlot = timeSlot;

  @action
  void setCar(Car car) => this.car = car;

  @action
  void setCleaningOptions(List<CleaningOption> cleaningOptions) {
    this.cleaningOptions.clear();
    this.cleaningOptions.addAll(cleaningOptions);
  }

  @action
  void reset() {
    carWash = null;
    timeSlot = null;
    car = null;
    cleaningOptions.clear();
  }
}
