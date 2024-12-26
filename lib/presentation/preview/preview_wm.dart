import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/create_reservation_store.dart';
import 'package:autobir/presentation/_utils/utils.dart';
import 'package:autobir/presentation/payment_methods/screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'preview.dart';

part 'preview_wm.g.dart';

// @LazySingleton(dispose: disposePreviewWm)
class PreviewWm = _PreviewWmBase with _$PreviewWm;

abstract class _PreviewWmBase extends MobxWM<PreviewScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final createReservationStore = locator<CreateReservationStore>();

  final promocodeController = TextEditingController();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  bool isLoading = false;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> postReservation() async {
    if (isLoading) return;

    FocusManager.instance.primaryFocus?.unfocus();

    isLoading = true;

    try {
      if (createReservationStore.carWash == null) {
        throw Exception('Car wash is not selected');
      } else if (createReservationStore.timeSlot == null) {
        throw Exception('Time slot is not selected');
      } else if (createReservationStore.car == null) {
        throw Exception('Car is not selected');
      } else if (createReservationStore.cleaningOptions.isEmpty) {
        throw Exception('Cleaning options are not selected');
      }

      final createdReservation = await _apiService.createReservation(
        ReservationCreateRequest(
          carWashId: createReservationStore.carWash!.id,
          comment: createReservationStore.comment,
          carId: createReservationStore.car!.id,
          timeSlotId: createReservationStore.timeSlot!.id,
          cleaningOptionIds: createReservationStore.cleaningOptions.map((e) => e.id).toList(),
        ),
      );

      /// Initiate payment
      final initiatePaymentResponse = await _apiService.initiatePayment(createdReservation.id, 1000);

      // navigate to payment screen
      if (context.mounted) {
        context.pushRoute(
          PaymentWebviewRoute(
            paymentUrl: initiatePaymentResponse.paymentLink,
            reservation: createdReservation,
          ),
        );
      }
    } on Exception catch (e) {
      logger.e(e);
      // show error message
      // TODO: исправить message на что-то более подходящее
      if (context.mounted) showErrorSnackBar(context, e);
    } finally {
      isLoading = false;
    }
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

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

Future<void> disposePreviewWm(PreviewWm instance) async => instance.dispose();
