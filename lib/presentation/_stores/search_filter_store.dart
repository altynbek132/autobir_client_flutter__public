import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:mobx/mobx.dart';

part 'search_filter_store.g.dart';

class SearchFilterStore = SearchFilterBase with _$SearchFilterStore;

abstract class SearchFilterBase with Store {
  @observable
  String? name;

  @observable
  double? rating;

  final ObservableList<CleaningOptionsEnum> cleaningOptions = ObservableList<CleaningOptionsEnum>();

  @observable
  double? lat;

  @observable
  double? lng;

  @observable
  SearchSortBy sortBy = SearchSortBy.popular;

  @observable
  double? priceMin;

  @observable
  double? priceMax;

  @observable
  City? city;

  @action
  void setName(String? value) => name = value;

  @action
  void setRating(double? value) => rating = value;

  @action
  void setCleaningOption(List<CleaningOptionsEnum> value) {
    cleaningOptions.clear();
    cleaningOptions.addAll(value);
  }

  @action
  void setLat(double? value) => lat = value;

  @action
  void setLng(double? value) => lng = value;

  @action
  void setSortBy(SearchSortBy value) => sortBy = value;

  @action
  void setPriceMin(double? value) => priceMin = value;

  @action
  void setPriceMax(double? value) => priceMax = value;

  @action
  void setCity(City? value) => city = value;
}
