import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/calculate_distance_store.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobx/mobx.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:utils/utils_dart/utils_dart.dart';
import 'package:utils/utils_flutter.dart';
import 'package:utils/utils_dart.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'map_screen.dart';

part 'map_wm.g.dart';

enum MapState {
  fetchingPosition,
  fetchingCarWashes,
  success,
  error,
}

class MapWm = _MapWmBase with _$MapWm;

abstract class _MapWmBase extends MobxWM<MapScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  late final YandexMapController mapController;

  final MapObjectId clustedId = const MapObjectId('clusterized_placemark_collection');

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  Position? devicePosition;

  @observable
  int currentPage = 1;

  @observable
  MapState state = MapState.fetchingPosition;

  @observable
  ClusterizedPlacemarkCollection? cluster;

  final carWashList = ObservableList<CarWash>();

  final placemarks = ObservableList<PlacemarkMapObject>();

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void updateCluster() {
    if (cluster != null) {
      cluster = cluster!.copyWith(
        placemarks: placemarks,
      );
    } else {
      cluster = clusterizedPlacemarkCollection();
    }
  }

  @action
  Future<void> fetchDevicePosition() async {
    /// Fetch device position
    devicePosition = locator<CalculateDistanceStore>().deviceLocation;

    if (devicePosition != null) {
      /// Move camera to device position
      mapController.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(
              latitude: devicePosition!.latitude,
              longitude: devicePosition!.longitude,
            ),
            zoom: 12,
          ),
        ),
        animation: const MapAnimation(duration: 1),
      );
    }
  }

  @action
  Future<void> fetchCarWashes() async {
    try {
      if (devicePosition == null) {
        throw Exception('Device position is null');
      }

      /// loop through all pages
      bool isLastPage = false;
      while (!isLastPage) {
        final searchListResults = await _apiService.searchCarWashes(CarWashSearchRequest(
          page: currentPage,
          perPage: 20,
          lat: devicePosition!.latitude,
          lng: devicePosition!.longitude,
        ));

        /// add car washes to list
        carWashList.addAll(searchListResults.data);

        /// add placemarks to map
        for (final carWash in searchListResults.data) {
          if (carWash.latitude != null && carWash.longitude != null) {
            addPlacemark(
              _placemarkMapObject(
                carWash: carWash,
                point: Point(
                  latitude: carWash.latitude!,
                  longitude: carWash.longitude!,
                ),
              ),
            );
          }
        }

        isLastPage = searchListResults.lastPage == currentPage;
        currentPage++;
      }

      // update state
      state = MapState.success;
    } catch (_) {
      // update state
      state = MapState.error;
    }
  }

  @action
  void addPlacemark(PlacemarkMapObject placemarkMapObject) {
    placemarks.add(placemarkMapObject);
    updateCluster();
  }

  // UI -----------------------------------------------------------------------

  ClusterizedPlacemarkCollection clusterizedPlacemarkCollection() {
    return ClusterizedPlacemarkCollection(
      mapId: clustedId,
      radius: 30,
      minZoom: 15,
      onClusterAdded: (
        ClusterizedPlacemarkCollection self,
        Cluster cluster,
      ) async {
        return cluster.copyWith(
          appearance: cluster.appearance.copyWith(
            opacity: 0.75,
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromBytes(
                  await MapScreen.buildClusterAppearance(
                    cluster,
                  ),
                ),
                scale: 1,
              ),
            ),
          ),
        );
      },
      onClusterTap: (
        ClusterizedPlacemarkCollection self,
        Cluster cluster,
      ) {},
      placemarks: placemarks,
      onTap: (
        ClusterizedPlacemarkCollection self,
        Point point,
      ) {},
    );
  }

  PlacemarkMapObject _placemarkMapObject({
    required CarWash carWash,
    required Point point,
  }) {
    return PlacemarkMapObject(
      mapId: MapObjectId('${carWash.id}'),
      onTap: (mapObject, point) {
        context.pushRoute(CarWashRoute(carWash: carWash));
      },
      point: point,
      opacity: 0.95,
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage(
            'assets/images/map/location_marker.png',
          ),
        ),
      ),
    );
  }

  // UTIL METHODS -------------------------------------------------------------

  void onMapCreated(YandexMapController yandexMapController) async {
    mapController = yandexMapController;
    await _requestPermission();

    // once mapController is initialized, fetch device position
    fetchDevicePosition();

    /// Fetch car washes
    fetchCarWashes();
    state = MapState.fetchingCarWashes;
  }

  Future<void> _requestPermission() async {
    final locationPermissionIsGranted = await Permission.location.request().isGranted;

    if (locationPermissionIsGranted) {
      await mapController.toggleUserLayer(visible: true);
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Нет доступа к местоположению пользователя'),
          ),
        );
      });
    }
  }

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => '',
      ],
      logger,
    );
  }
}

Future<void> disposeMapWm(MapWm instance) async => instance.dispose();
