// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookmarksWm on _BookmarksWmBase, Store {
  Computed<List<int>>? _$bookmarkedCarWashIdsComputed;

  @override
  List<int> get bookmarkedCarWashIds => (_$bookmarkedCarWashIdsComputed ??=
          Computed<List<int>>(() => super.bookmarkedCarWashIds,
              name: '_BookmarksWmBase.bookmarkedCarWashIds'))
      .value;
  Computed<bool Function(int)>? _$isCarWashBookmarkedComputed;

  @override
  bool Function(int) get isCarWashBookmarked =>
      (_$isCarWashBookmarkedComputed ??= Computed<bool Function(int)>(
              () => super.isCarWashBookmarked,
              name: '_BookmarksWmBase.isCarWashBookmarked'))
          .value;

  late final _$currentPageAtom =
      Atom(name: '_BookmarksWmBase.currentPage', context: reactiveContext);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$pageKeyAtom =
      Atom(name: '_BookmarksWmBase.pageKey', context: reactiveContext);

  @override
  int get pageKey {
    _$pageKeyAtom.reportRead();
    return super.pageKey;
  }

  @override
  set pageKey(int value) {
    _$pageKeyAtom.reportWrite(value, super.pageKey, () {
      super.pageKey = value;
    });
  }

  late final _$pagingControllerAtom =
      Atom(name: '_BookmarksWmBase.pagingController', context: reactiveContext);

  @override
  PagingController<int, Bookmark> get pagingController {
    _$pagingControllerAtom.reportRead();
    return super.pagingController;
  }

  @override
  set pagingController(PagingController<int, Bookmark> value) {
    _$pagingControllerAtom.reportWrite(value, super.pagingController, () {
      super.pagingController = value;
    });
  }

  late final _$addBookmarkAsyncAction =
      AsyncAction('_BookmarksWmBase.addBookmark', context: reactiveContext);

  @override
  Future<void> addBookmark({required CarWash carWash}) {
    return _$addBookmarkAsyncAction
        .run(() => super.addBookmark(carWash: carWash));
  }

  late final _$deleteBookmarkAsyncAction =
      AsyncAction('_BookmarksWmBase.deleteBookmark', context: reactiveContext);

  @override
  Future<void> deleteBookmark({required Bookmark bookmark}) {
    return _$deleteBookmarkAsyncAction
        .run(() => super.deleteBookmark(bookmark: bookmark));
  }

  late final _$fetchBookmarksAsyncAction =
      AsyncAction('_BookmarksWmBase.fetchBookmarks', context: reactiveContext);

  @override
  Future<void> fetchBookmarks() {
    return _$fetchBookmarksAsyncAction.run(() => super.fetchBookmarks());
  }

  late final _$_BookmarksWmBaseActionController =
      ActionController(name: '_BookmarksWmBase', context: reactiveContext);

  @override
  void setCurrentPage(int page) {
    final _$actionInfo = _$_BookmarksWmBaseActionController.startAction(
        name: '_BookmarksWmBase.setCurrentPage');
    try {
      return super.setCurrentPage(page);
    } finally {
      _$_BookmarksWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPageKey(int key) {
    final _$actionInfo = _$_BookmarksWmBaseActionController.startAction(
        name: '_BookmarksWmBase.setPageKey');
    try {
      return super.setPageKey(key);
    } finally {
      _$_BookmarksWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void retryLastFailedRequest() {
    final _$actionInfo = _$_BookmarksWmBaseActionController.startAction(
        name: '_BookmarksWmBase.retryLastFailedRequest');
    try {
      return super.retryLastFailedRequest();
    } finally {
      _$_BookmarksWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_BookmarksWmBaseActionController.startAction(
        name: '_BookmarksWmBase.refresh');
    try {
      return super.refresh();
    } finally {
      _$_BookmarksWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
pageKey: ${pageKey},
pagingController: ${pagingController},
bookmarkedCarWashIds: ${bookmarkedCarWashIds},
isCarWashBookmarked: ${isCarWashBookmarked}
    ''';
  }
}
