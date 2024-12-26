import 'dart:async';
import 'dart:convert';

import 'package:api_client/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Base class containing a unified API for key-value pairs' storage.
/// This class provides low level methods for storing:
/// - Sensitive keys using [FlutterSecureStorage]
/// - Insensitive keys using [SharedPreferences
@lazySingleton
class KeyValueStorageBase {
  @factoryMethod
  KeyValueStorageBase.from(this._sharedPrefs, this._secureStorage);

  final SharedPreferences? _sharedPrefs;
  final FlutterSecureStorage? _secureStorage;

  /// Reads the value for the key from common preferences storage
  T? getCommon<T>(String key) {
    try {
      switch (T) {
        case String:
          return _sharedPrefs!.getString(key) as T?;
        case int:
          return _sharedPrefs!.getInt(key) as T?;
        case bool:
          return _sharedPrefs!.getBool(key) as T?;
        case double:
          return _sharedPrefs!.getDouble(key) as T?;
        default:
          return _sharedPrefs!.get(key) as T?;
      }
    } on Exception catch (ex) {
      debugPrint('$ex');
      return null;
    }
  }

  /// Reads the decrypted value for the key from secure storage
  Future<String?> getEncrypted(String key) {
    try {
      return _secureStorage!.read(key: key);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future<String?>.value();
    }
  }

  /// Sets the value for the key to common preferences storage
  Future<bool> setCommon<T>(String key, T? value) {
    if (value == null) {
      _sharedPrefs!.remove(key);
      return Future.value(true);
    }
    switch (T) {
      case String:
        return _sharedPrefs!.setString(key, value as String);
      case int:
        return _sharedPrefs!.setInt(key, value as int);
      case bool:
        return _sharedPrefs!.setBool(key, value as bool);
      case double:
        return _sharedPrefs!.setDouble(key, value as double);
      default:
        return _sharedPrefs!.setString(key, value as String);
    }
  }

  /// Sets the encrypted value for the key to secure storage
  Future<bool> setEncrypted(String key, String? value) {
    try {
      _secureStorage!.write(key: key, value: value);
      return Future.value(true);
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return Future.value(false);
    }
  }

  /// Erases common preferences keys
  Future<bool> clearCommon() => _sharedPrefs!.clear();

  /// Erases encrypted keys
  Future<bool> clearEncrypted() async {
    try {
      await _secureStorage!.deleteAll();
      return true;
    } on PlatformException catch (ex) {
      debugPrint('$ex');
      return false;
    }
  }
}

/// A service class for providing methods to store and retrieve key-value data
/// from common or secure storage.
@lazySingleton
class KeyValueStorageService {
  static const _isFirstRun = 'isFirstRun';
  static const _showPermissionRequests = 'showPermissionRequests';
  static const _accessToken = 'accessToken';
  static const _userModel = 'userModel';
  static const _city = 'city';

  @factoryMethod
  KeyValueStorageService.from(
    this.keyValueStorage,
  );

  final KeyValueStorageBase keyValueStorage;

  // GETTERS
  bool isFirstRun() {
    return keyValueStorage.getCommon<bool>(_isFirstRun) ?? true;
  }

  bool? getShowPermissionRequests() {
    return keyValueStorage.getCommon<bool>(_showPermissionRequests);
  }

  Future<String?> getAccessToken() {
    return keyValueStorage.getEncrypted(_accessToken);
  }

  User? getUserModel() {
    final json = keyValueStorage.getCommon(_userModel);
    if (json != null) {
      return User.fromJson(jsonDecode(json));
    } else {
      return null;
    }
  }

  int? getCity() {
    return keyValueStorage.getCommon<int>(_city);
  }

  // SETTERS
  Future<void> setFirstRunComplete() async {
    await keyValueStorage.setCommon(_isFirstRun, false);
  }

  Future<void> setShowPermissionRequests(bool value) async {
    await keyValueStorage.setCommon(_showPermissionRequests, value);
  }

  Future<void> setAccessToken(String? accessToken) async {
    await keyValueStorage.setEncrypted(_accessToken, accessToken);
  }

  Future<void> setUserModel(User? userModel) async {
    await keyValueStorage.setCommon(_userModel, userModel != null ? jsonEncode(userModel.toJson()) : null);
  }

  Future<void> setCity(int? city) async {
    await keyValueStorage.setCommon(_city, city);
  }

  // OTHER
  Future<void> resetKeys() async {
    await keyValueStorage.clearCommon();
    await keyValueStorage.clearEncrypted();
  }
}
