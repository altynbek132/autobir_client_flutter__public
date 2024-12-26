import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';

import 'profile.dart';

part 'profile_wm.g.dart';

enum ProfileState { fetching, success, error }

class ProfileWm = _ProfileWmBase with _$ProfileWm;

abstract class _ProfileWmBase extends MobxWM<ProfileScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    _apiService = locator<ApiService>();

    /// check if KeyValueStorageService has user model
    /// if not, fetch user profile
    /// if yes, set user model and state to success
    user = locator<KeyValueStorageService>().getUserModel();
    if (user == null) {
      fetchUserProfile();
    } else {
      state = ProfileState.success;
    }
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  late final ApiService _apiService;

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  User? user;

  @observable
  ProfileState state = ProfileState.fetching;

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> fetchUserProfile() async {
    try {
      final user = await _apiService.getProfile();

      /// save user model to KeyValueStorageService
      locator<KeyValueStorageService>().setUserModel(user);

      /// set user model and state to success
      this.user = user;
      state = ProfileState.success;
    } catch (e) {
      logger.e(e);
      state = ProfileState.error;
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

Future<void> disposeProfileWm(ProfileWm instance) async => instance.dispose();
