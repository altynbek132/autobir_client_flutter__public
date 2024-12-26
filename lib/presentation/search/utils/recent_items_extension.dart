import 'dart:convert';

import 'package:api_client/api_client.dart';
import 'package:autobir/_utils/key_value_storage.dart';

extension RecentItemsExtension on KeyValueStorageService {
  static const _recentlyViewedKey = 'recentlyViewedCarWashes';
  static const _recentlySearchedKey = 'recentlySearchedQueries';

  Future<void> addRecentlyViewedCarWash(CarWash carWash) async {
    final carWashes = await getRecentlyViewedCarWashes();
    carWashes.removeWhere((item) => item.id == carWash.id);
    carWashes.insert(0, carWash);
    if (carWashes.length > 10) {
      carWashes.removeRange(10, carWashes.length);
    }
    final jsonList = carWashes.map((cw) => jsonEncode(cw.toJson())).toList();
    await keyValueStorage.setCommon(_recentlyViewedKey, jsonEncode(jsonList));
  }

  Future<List<CarWash>> getRecentlyViewedCarWashes() async {
    final jsonString = keyValueStorage.getCommon<String>(_recentlyViewedKey);
    if (jsonString != null) {
      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => CarWash.fromJson(jsonDecode(json))).toList();
    }
    return [];
  }

  Future<void> deleteRecentlySearchedQuery(String query) async {
    final queries = await getRecentlySearchedQueries();
    queries.remove(query);
    await keyValueStorage.setCommon(_recentlySearchedKey, jsonEncode(queries));
  }

  Future<void> addRecentlySearchedQuery(String query) async {
    final queries = await getRecentlySearchedQueries();
    queries.remove(query);
    queries.insert(0, query);
    if (queries.length > 3) {
      queries.removeRange(3, queries.length);
    }
    await keyValueStorage.setCommon(_recentlySearchedKey, jsonEncode(queries));
  }

  Future<List<String>> getRecentlySearchedQueries() async {
    final jsonString = keyValueStorage.getCommon<String>(_recentlySearchedKey);
    if (jsonString != null) {
      return List<String>.from(jsonDecode(jsonString));
    }
    return [];
  }
}
