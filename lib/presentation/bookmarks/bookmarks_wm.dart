// ignore_for_file: library_private_types_in_public_api
import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/presentation/_stores/auth_store.dart';
import 'package:dio/dio.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

part 'bookmarks_wm.g.dart';

@LazySingleton()
class BookmarksWm = _BookmarksWmBase with _$BookmarksWm;

abstract class _BookmarksWmBase extends MobxStoreBase with Store, LoggerMixin {
  _BookmarksWmBase() {
    _apiService = locator<ApiService>();
    pagingController.addPageRequestListener((pageKey) {
      setCurrentPage((pageKey ~/ perPage) + 1);
      setPageKey(pageKey);
    });
    locator<AuthStore>().tokenStream.listen((token) {
      if (token != null) {
        fetchBookmarks();
      }
    });
  }
  // INIT ---------------------------------------------------------------------

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  static const int perPage = 15;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  int currentPage = 1;

  @observable
  int pageKey = 0;

  final bookmarksList = ObservableList<Bookmark>();

  @observable
  PagingController<int, Bookmark> pagingController = PagingController(firstPageKey: 0);

  // COMPUTED -----------------------------------------------------------------

  @computed
  List<int> get bookmarkedCarWashIds => bookmarksList.map((e) => e.carWashId).toList();

  @computed
  bool Function(int) get isCarWashBookmarked => (int carWashId) => bookmarkedCarWashIds.contains(carWashId);

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> addBookmark({required CarWash carWash}) async {
    try {
      final bookmarkCreateResponse = await _apiService.createBookmark(carWash.id);
      final addedBookmark = Bookmark(
        id: bookmarkCreateResponse.id,
        userId: locator<KeyValueStorageService>().getUserModel()?.id ?? 0,
        carWashId: carWash.id,
        carWash: carWash,
        createdAt: DateTime.now(),
      );

      /// add bookmark to pagingController
      pagingController.itemList?.add(addedBookmark);

      /// add bookmark to list
      bookmarksList.add(addedBookmark);
    } catch (e) {
      logger.e(e);
    } finally {}
  }

  @action
  Future<void> deleteBookmark({required Bookmark bookmark}) async {
    try {
      await _apiService.deleteBookmark(bookmark.id);

      /// remove bookmark from pagingController
      pagingController.itemList?.remove(bookmark);

      /// remove bookmark from list
      bookmarksList.removeWhere((e) => e.id == bookmark.id);
    } catch (e) {
      logger.e(e);
    } finally {}
  }

  @action
  void setCurrentPage(int page) => currentPage = page;

  @action
  void setPageKey(int key) => pageKey = key;

  @action
  Future<void> fetchBookmarks() async {
    try {
      /// loop through all pages
      bool isLastPage = false;

      while (!isLastPage) {
        final bookmarkListResponse = await _apiService.getBookmarks(
          page: currentPage,
          perPage: perPage,
        );

        /// add car washes to list
        bookmarksList.addAll(bookmarkListResponse.data);

        isLastPage = bookmarkListResponse.lastPage >= currentPage;

        /// append page to [pagingController]
        if (isLastPage) {
          pagingController.appendLastPage(bookmarkListResponse.data);
        } else {
          final nextPageKey = pageKey + bookmarkListResponse.data.length;
          pagingController.appendPage(bookmarkListResponse.data, nextPageKey);
        }

        currentPage++;
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  @action
  void retryLastFailedRequest() {
    /// if getBookmarks() failed at currentPage > 1
    /// we keep the existing bookmarks and try to fetch the next page
    fetchBookmarks();
  }

  @action
  void refresh() {
    /// if getBookmarks() failed at currentPage == 1
    /// we clear the existing bookmarks and try to fetch the first page
    pagingController.itemList?.clear();
    bookmarksList.clear();
    currentPage = 1;
    pageKey = 0;
    fetchBookmarks();
  }

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------
}

Future<void> disposeBookmarksWm(BookmarksWm instance) async => instance.disposeAsync();
