import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'promos_list.dart';

part 'promos_list_wm.g.dart';

enum PromosListState {
  firstPageLoading,
  success,
  firstPageError,
  nextPageError,
}

class PromosListWm = _PromosListWmBase with _$PromosListWm;

abstract class _PromosListWmBase extends MobxWM<PromosListScreen> with Store, LoggerMixin {
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
  PagingController<int, CarWash> pagingController = PagingController(firstPageKey: 0);

  @observable
  PromosListState state = PromosListState.firstPageLoading;

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
      final searchListResults = await _apiService.getPopularCarWashes(page: currentPage, perPage: perPage);
      final isLastPage = searchListResults.lastPage == currentPage;
      if (isLastPage) {
        pagingController.appendLastPage(searchListResults.data);
      } else {
        final nextPageKey = pageKey + searchListResults.data.length;
        pagingController.appendPage(searchListResults.data, nextPageKey);
      }

      /// set total number of items
      setTotal(searchListResults.total);

      // update state
      state = PromosListState.success;
    } catch (error) {
      if (pageKey == 1) {
        state = PromosListState.firstPageError;
      } else {
        state = PromosListState.nextPageError;
      }
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

Future<void> disposePromosListWm(PromosListWm instance) async => instance.dispose();
