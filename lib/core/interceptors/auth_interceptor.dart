import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await locator<KeyValueStorageService>().getAccessToken();
    options.headers.addAll(
      <String, Object?>{
        'Authorization': 'Bearer $accessToken',
        'Accept': 'application/json',
      },
    );

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
