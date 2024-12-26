import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'notifications.dart';

part 'notifications_wm.g.dart';

class NotificationsWm = _NotificationsWmBase with _$NotificationsWm;

abstract class _NotificationsWmBase extends MobxWM<NotificationsScreen> with Store, LoggerMixin {
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

  static const int perPage = 15;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int? total;

  @observable
  PagingController<int, NotificationModel> pagingController = PagingController(firstPageKey: 0);

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void setCurrentPage(int page) => currentPage = page;

  @action
  void setTotal(int value) => total = value;

  @action
  Future<void> fetchPage(int pageKey) async {
    try {
      final notificationListResponse = await _apiService.getNotifications(
        page: currentPage,
        perPage: perPage,
      );
      final isLastPage = notificationListResponse.lastPage == currentPage;
      if (isLastPage) {
        pagingController.appendLastPage(notificationListResponse.data);
      } else {
        final nextPageKey = pageKey + notificationListResponse.data.length;
        pagingController.appendPage(notificationListResponse.data, nextPageKey);
      }

      /// set total number of items
      setTotal(notificationListResponse.total);
    } catch (error) {
      pagingController.error = error;
    }
  }

  @action
  Future<void> markAllAsRead() async {
    await _apiService.markAllNotificationsAsRead();
    pagingController.refresh();
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

Future<void> disposeNotificationsWm(NotificationsWm instance) async => instance.dispose();
