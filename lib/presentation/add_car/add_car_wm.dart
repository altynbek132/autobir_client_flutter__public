import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'add_car.dart';

part 'add_car_wm.g.dart';

class AddCarWm = _AddCarWmBase with _$AddCarWm;

abstract class _AddCarWmBase extends MobxWM<AddCarScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final formKey = GlobalKey<FormState>();

  final brandController = TextEditingController();

  final modelController = TextEditingController();

  final yearController = TextEditingController();

  final licensePlateController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int? carTypeId;

  @observable
  bool isLoading = false;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void setCarTypeId(int? value) => carTypeId = value;

  @action
  Future<void> addCar() async {
    FocusManager.instance.primaryFocus?.unfocus();

    if (formKey.currentState!.validate() && carTypeId != null) {
      isLoading = true;
      try {
        await _apiService.addCar(
          CarRequest(
            make: brandController.text,
            model: modelController.text,
            year: yearController.text,
            licensePlate: licensePlateController.text,
            carTypeId: carTypeId!,
          ),
        );

        // replace with success screen
        if (context.mounted) {
          context.replaceRoute(
            AddCarSuccessRoute(
              // not the actual car, but the data that was sent to the server
              car: Car(
                id: -1,
                userId: -1,
                make: brandController.text,
                model: modelController.text,
                year: yearController.text,
                licensePlate: licensePlateController.text,
                carTypeId: carTypeId!,
                createdAt: DateTime.now(),
              ),
            ),
          );
        }
      } catch (e) {
        logger.e(e);
        if (context.mounted) showSnackbar(context, 'Ошибка при добавлении автомобиля');
      } finally {
        isLoading = false;
      }
    } else {
      showSnackbar(context, 'Заполните все поля');
    }
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  String? yearFieldValidator(String? value) {
    if (value!.isEmpty) {
      return 'Введите год выпуска';
    }
    if (value.length != 4) {
      return 'Введите год выпуска в формате ГГГГ';
    }
    final yearInt = int.tryParse(value);
    if (yearInt != null && yearInt > DateTime.now().year) {
      return 'Год выпуска не может быть больше текущего года';
    }
    if (yearInt != null && yearInt < 1900) {
      return 'Год выпуска не может быть меньше 1900 года';
    }
    return null;
  }

  String? brandFieldValidator(String? value) {
    if (value!.isEmpty) {
      return 'Введите марку автомобиля';
    }
    return null;
  }

  String? modelFieldValidator(String? value) {
    if (value!.isEmpty) {
      return 'Введите модель автомобиля';
    }
    return null;
  }

  String? licensePlateFieldValidator(String? value) {
    if (value!.isEmpty) {
      return 'Введите гос. номер';
    }
    return null;
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

Future<void> disposeAddCarWm(AddCarWm instance) async => instance.dispose();
