// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_client/api_client.dart' as _i633;
import 'package:autobir/_utils/key_value_storage.dart' as _i860;
import 'package:autobir/DI/register_module.dart' as _i897;
import 'package:autobir/presentation/_stores/auth_store.dart' as _i110;
import 'package:autobir/presentation/_stores/calculate_distance_store.dart'
    as _i595;
import 'package:autobir/presentation/_stores/cities_store.dart' as _i441;
import 'package:autobir/presentation/_stores/create_reservation_store.dart'
    as _i238;
import 'package:autobir/presentation/bookmarks/bookmarks_wm.dart' as _i308;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i633.ApiService>(() => registerModule.apiService);
    gh.factory<_i633.ApiServiceDio>(() => registerModule.apiServiceDio);
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i558.FlutterSecureStorage>(() => registerModule.secureStorage);
    gh.lazySingleton<_i308.BookmarksWm>(() => _i308.BookmarksWm());
    gh.lazySingleton<_i595.CalculateDistanceStore>(
        () => _i595.CalculateDistanceStore());
    gh.lazySingleton<_i441.CitiesStore>(() => _i441.CitiesStore());
    gh.lazySingleton<_i110.AuthStore>(() => _i110.AuthStore());
    gh.lazySingleton<_i238.CreateReservationStore>(
        () => _i238.CreateReservationStore());
    gh.lazySingleton<_i860.KeyValueStorageBase>(
        () => _i860.KeyValueStorageBase.from(
              gh<_i460.SharedPreferences>(),
              gh<_i558.FlutterSecureStorage>(),
            ));
    gh.lazySingleton<_i860.KeyValueStorageService>(() =>
        _i860.KeyValueStorageService.from(gh<_i860.KeyValueStorageBase>()));
    return this;
  }
}

class _$RegisterModule extends _i897.RegisterModule {}
