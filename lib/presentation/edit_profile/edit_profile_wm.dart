import 'dart:async';
import 'dart:io';

// ignore: unused_import
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:flutter/material.dart' hide Action;
// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:image_picker/image_picker.dart';
// ignore: unused_import
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'edit_profile.dart';

part 'edit_profile_wm.g.dart';

// @LazySingleton(dispose: disposeEditProfileWm)
class EditProfileWm = _EditProfileWmBase with _$EditProfileWm;

abstract class _EditProfileWmBase extends MobxWM<EditProfileScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------
  final ImagePicker _imagePicker = ImagePicker();
  final apiClient = locator<ApiService>();

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  late final nameTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);
  late final phoneTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);
  late final emailTEC = MobxUtils.fromCN(TextEditingController()).disposeOnR(this);

  final profileImage = makeObsNull<File>();

  final isLoading = makeObs(false);

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  Future<void> pickImage() async {
    final XFile? pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage.value = File(pickedFile.path);
    }
  }

  @action
  Future<void> updateProfile() async {
    final name = nameTEC.value.text.trim();
    final phone = phoneTEC.value.text.split('').where((element) => element.isNumericOnly()).join().trim();
    final email = emailTEC.value.text.trim();

    // Call the API to update the profile
    await apiClient.updateProfile(
      name: name.isNotEmpty ? name : null,
      phone: phone.isNotEmpty ? phone : null,
      email: email.isNotEmpty ? email : null,
      photo: profileImage.value,
    );
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

Future<void> disposeEditProfileWm(EditProfileWm instance) async => instance.dispose();
