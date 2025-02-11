// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_list_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PopularListWm on _PopularListWmBase, Store {
  late final _$currentPageAtom =
      Atom(name: '_PopularListWmBase.currentPage', context: reactiveContext);

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

  late final _$totalAtom =
      Atom(name: '_PopularListWmBase.total', context: reactiveContext);

  @override
  int? get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int? value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  late final _$pagingControllerAtom = Atom(
      name: '_PopularListWmBase.pagingController', context: reactiveContext);

  @override
  PagingController<int, CarWash> get pagingController {
    _$pagingControllerAtom.reportRead();
    return super.pagingController;
  }

  @override
  set pagingController(PagingController<int, CarWash> value) {
    _$pagingControllerAtom.reportWrite(value, super.pagingController, () {
      super.pagingController = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_PopularListWmBase.state', context: reactiveContext);

  @override
  PopularListState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(PopularListState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchPageAsyncAction =
      AsyncAction('_PopularListWmBase.fetchPage', context: reactiveContext);

  @override
  Future<void> fetchPage(int pageKey) {
    return _$fetchPageAsyncAction.run(() => super.fetchPage(pageKey));
  }

  late final _$_PopularListWmBaseActionController =
      ActionController(name: '_PopularListWmBase', context: reactiveContext);

  @override
  void setCurrentPage(int page) {
    final _$actionInfo = _$_PopularListWmBaseActionController.startAction(
        name: '_PopularListWmBase.setCurrentPage');
    try {
      return super.setCurrentPage(page);
    } finally {
      _$_PopularListWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTotal(int value) {
    final _$actionInfo = _$_PopularListWmBaseActionController.startAction(
        name: '_PopularListWmBase.setTotal');
    try {
      return super.setTotal(value);
    } finally {
      _$_PopularListWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
total: ${total},
pagingController: ${pagingController},
state: ${state}
    ''';
  }
}
