// SEARCH AND FILTER
enum CleaningOptionsEnum {
  bodyWash('Мойка кузова'),
  vacuumCleaning('Вакуумная чистка'),
  interiorCleaning('Чистка салона'),
  engineCleaning('Очистка моторного отсека'),
  polishing('Полировка'),
  tireCleaning('Очистка шин');

  const CleaningOptionsEnum(this.name);

  final String name;
}

enum SearchSortBy {
  popular('Популярные'),
  nearby('Рядом'),
  price('Сначала дешевые');

  const SearchSortBy(this.name);

  final String name;
}

enum CarTypeStatic {
  sedan('Седан'),
  suv('Внедорожник'),
  hatchback('Хэтчбек'),
  truck('Грузовик'),
  van('Фургон'),
  ;

  const CarTypeStatic(this.name);

  final String name;
}

final carTypeMap = {
  1: CarTypeStatic.sedan,
  2: CarTypeStatic.suv,
  3: CarTypeStatic.hatchback,
  4: CarTypeStatic.truck,
  5: CarTypeStatic.van,
};
