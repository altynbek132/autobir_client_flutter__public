import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:utils/utils_dart/utils_dart.dart';

part 'auth_store.g.dart';

@lazySingleton
class AuthStore = AuthBase with _$AuthStore;

abstract class AuthBase with Store {
  AuthBase() {
    initLateFields([token]);
    () async {
      token.value = await locator<KeyValueStorageService>().getAccessToken();
    }();
  }

  final token = makeObsNull<String>();
  late final tokenStream = token.toStream();

  Future<String?> getAccessToken() {
    return locator<KeyValueStorageService>().getAccessToken();
  }

  Future<void> setAccessToken(String? accessToken) async {
    await locator<KeyValueStorageService>().setAccessToken(accessToken);
    token.value = accessToken;
  }
}
