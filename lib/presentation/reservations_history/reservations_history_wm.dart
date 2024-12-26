import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'reservations_history.dart';

part 'reservations_history_wm.g.dart';

enum ReservationsHistoryState {
  firstPageLoading,
  success,
  error,
}

class ReservationsHistoryWm = _ReservationsHistoryWmBase with _$ReservationsHistoryWm;

abstract class _ReservationsHistoryWmBase extends MobxWM<ReservationsHistoryScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------
  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();
    pagingController.addPageRequestListener((pageKey) {
      setCurrentPage((pageKey ~/ perPage) + 1);
      fetchPage(pageKey);
    });
    super.initWidgetModel();
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  final int perPage = 15;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int? total;

  @observable
  PagingController<int, Reservation> pagingController = PagingController(firstPageKey: 0);

  @observable
  ReservationsHistoryState state = ReservationsHistoryState.firstPageLoading;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void setCurrentPage(int page) => currentPage = page;

  @action
  void setTotal(int value) => total = value;

  @action
  Future<void> cancelReservation(Reservation reservation) async {
    final reason = await context.router.push(CancelBookingRoute());

    try {
      await _apiService.cancelReservation(
        reservation.id,
        reason as String,
      );
      pagingController.itemList?.remove(reservation);
      pagingController.refresh();
    } catch (error) {
      logger.e('Error while cancelling reservation: $error');
    }
  }

  @action
  Future<void> fetchPage(int pageKey) async {
    try {
      final ReservationListResponse reservationListResponse = await _apiService.getReservations(
        page: currentPage,
        perPage: perPage,
      );
      final isLastPage = reservationListResponse.lastPage == currentPage;
      if (isLastPage) {
        pagingController.appendLastPage(reservationListResponse.data);
      } else {
        final nextPageKey = pageKey + reservationListResponse.data.length;
        pagingController.appendPage(reservationListResponse.data, nextPageKey);
      }

      /// set total number of items
      setTotal(reservationListResponse.total);

      // update state
      state = ReservationsHistoryState.success;
    } catch (error) {
      state = ReservationsHistoryState.error;
      pagingController.error = error;
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

Future<void> disposeReservationsHistoryWm(ReservationsHistoryWm instance) async => instance.dispose();
