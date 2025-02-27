// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_wm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileWm on _ProfileWmBase, Store {
  late final _$userAtom =
      Atom(name: '_ProfileWmBase.user', context: reactiveContext);

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_ProfileWmBase.state', context: reactiveContext);

  @override
  ProfileState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(ProfileState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$fetchUserProfileAsyncAction =
      AsyncAction('_ProfileWmBase.fetchUserProfile', context: reactiveContext);

  @override
  Future<void> fetchUserProfile() {
    return _$fetchUserProfileAsyncAction.run(() => super.fetchUserProfile());
  }

  @override
  String toString() {
    return '''
user: ${user},
state: ${state}
    ''';
  }
}
