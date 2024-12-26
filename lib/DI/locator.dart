import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

extension GetItExtension on GetIt {
  T? getMaybeNull<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    if (isRegistered<T>(instanceName: instanceName)) {
      return get<T>(
        instanceName: instanceName,
        param1: param1,
        param2: param2,
      );
    }
    return null;
  }
}
