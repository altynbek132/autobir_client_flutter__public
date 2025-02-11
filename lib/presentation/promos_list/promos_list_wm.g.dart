// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promos_list_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PromosListWm on _PromosListWmBase, Store {
  late final _$currentPageAtom =
      Atom(name: '_PromosListWmBase.currentPage', context: reactiveContext);

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
      Atom(name: '_PromosListWmBase.total', context: reactiveContext);

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
      name: '_PromosListWmBase.pagingController', context: reactiveContext);

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
      Atom(name: '_PromosListWmBase.state', context: reactiveContext);

  @override
  PromosListState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(PromosListState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchPageAsyncAction =
      AsyncAction('_PromosListWmBase.fetchPage', context: reactiveContext);

  @override
  Future<void> fetchPage(int pageKey) {
    return _$fetchPageAsyncAction.run(() => super.fetchPage(pageKey));
  }

  late final _$_PromosListWmBaseActionController =
      ActionController(name: '_PromosListWmBase', context: reactiveContext);

  @override
  void setCurrentPage(int page) {
    final _$actionInfo = _$_PromosListWmBaseActionController.startAction(
        name: '_PromosListWmBase.setCurrentPage');
    try {
      return super.setCurrentPage(page);
    } finally {
      _$_PromosListWmBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTotal(int value) {
    final _$actionInfo = _$_PromosListWmBaseActionController.startAction(
        name: '_PromosListWmBase.setTotal');
    try {
      return super.setTotal(value);
    } finally {
      _$_PromosListWmBaseActionController.endAction(_$actionInfo);
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
