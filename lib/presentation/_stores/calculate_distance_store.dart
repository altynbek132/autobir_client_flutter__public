import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'calculate_distance_store.g.dart';

@lazySingleton
class CalculateDistanceStore = CalculateDistanceBase with _$CalculateDistanceStore;

abstract class CalculateDistanceBase with Store {
  CalculateDistanceBase() {
    startLocationStream();
  }

  StreamSubscription<Position>? _positionStreamSubscription;

  @observable
  Position? deviceLocation;

  @action
  void startLocationStream() {
    _positionStreamSubscription?.cancel();
    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    ).listen(
      (Position position) {
        deviceLocation = position;
      },
      onError: (e) {},
    );
  }

  @action
  void stopLocationStream() {
    _positionStreamSubscription?.cancel();
    _positionStreamSubscription = null;
  }

  @computed
  double? Function(double? lat, double? lng) get distanceToDevice => (lat, lng) {
        if (deviceLocation == null || lat == null || lng == null) return null;
        final distanceInMeters = Geolocator.distanceBetween(
          deviceLocation!.latitude,
          deviceLocation!.longitude,
          lat,
          lng,
        );
        // FIXME: rough estimation
        return distanceInMeters / 1000 * 1.3;
      };

  @computed
  double? Function(double? lat, double? lng) get timeToDevice => (lat, lng) {
        final distanceInKm = distanceToDevice(lat, lng);
        if (distanceInKm == null) return null;
        // FIXME: rough estimation: average speed 45 km/h
        return (distanceInKm / 45) * 60;
      };

  void dispose() {
    stopLocationStream();
  }
}
