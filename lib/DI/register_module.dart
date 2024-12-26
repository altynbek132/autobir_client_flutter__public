// ignore_for_file: invalid_annotation_target

import 'dart:developer';

import 'package:api_client/api_client.dart';
import 'package:autobir/core/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(AuthInterceptor());
    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
          compact: true,
          logPrint: (object) => log(object.toString()),
          maxWidth: 90,
        ),
      );
    }
    return dio;
  }

  ApiService get apiService => ApiService(dio);
  ApiServiceDio get apiServiceDio => ApiServiceDio(dio);

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}
