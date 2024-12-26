import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/_utils.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:collection/collection.dart';
import 'package:disposing/disposing_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';

part 'cities_store.g.dart';

@lazySingleton
class CitiesStore = CitiesBase with _$CitiesStore;

abstract class CitiesBase with Store, LoggerMixin, DisposableBag {
  CitiesBase() {
    fetchCities();
    selectedCityId.value = storage.getCity();
  }

  final storage = locator<KeyValueStorageService>();

  final cities = <City>[].obs();

  final selectedCityId = makeObsNull<int>()..logOnChange();

  late final selectedCity = Computed(
    () => cities.firstWhereOrNull((element) => element.id == selectedCityId.value),
  );

  @action
  Future<void> fetchCities() async {
    try {
      final response = await locator<ApiService>().getCities();
      cities.clear();
      cities.addAll(response);
      selectedCityId.value ??= cities.firstOrNull?.id;
    } catch (e) {
      debugPrint('🚀~ file: cities_store.dart ~ line 52 ~ CitiesBase ~ fetchCities ~ e: $e');
    }
  }

  @action
  void selectCity(City? city) {
    selectedCityId.value = city?.id;
    logger.d("🚀~cities_store.dart:50~CitiesBase~voidselectCity~selectedCityId.value: ${selectedCityId.value}");
    storage.setCity(city?.id);
  }
}
