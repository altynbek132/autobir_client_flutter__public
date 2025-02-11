import 'package:api_client/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginate.freezed.dart';
part 'paginate.g.dart';

@freezed
class AdminPaginated with _$AdminPaginated {
  factory AdminPaginated({
    required List<Admin> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _AdminPaginated;

  factory AdminPaginated.fromJson(Map<String, dynamic> json) => _$AdminPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class BookmarkPaginated with _$BookmarkPaginated {
  factory BookmarkPaginated({
    required List<Bookmark> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _BookmarkPaginated;

  factory BookmarkPaginated.fromJson(Map<String, dynamic> json) => _$BookmarkPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarPaginated with _$CarPaginated {
  factory CarPaginated({
    required List<Car> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _CarPaginated;

  factory CarPaginated.fromJson(Map<String, dynamic> json) => _$CarPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarTypePaginated with _$CarTypePaginated {
  factory CarTypePaginated({
    required List<CarType> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _CarTypePaginated;

  factory CarTypePaginated.fromJson(Map<String, dynamic> json) => _$CarTypePaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarWashPaginated with _$CarWashPaginated {
  factory CarWashPaginated({
    required List<CarWash> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _CarWashPaginated;

  factory CarWashPaginated.fromJson(Map<String, dynamic> json) => _$CarWashPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CityPaginated with _$CityPaginated {
  factory CityPaginated({
    required List<City> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _CityPaginated;

  factory CityPaginated.fromJson(Map<String, dynamic> json) => _$CityPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CleaningOptionPaginated with _$CleaningOptionPaginated {
  factory CleaningOptionPaginated({
    required List<CleaningOption> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _CleaningOptionPaginated;

  factory CleaningOptionPaginated.fromJson(Map<String, dynamic> json) => _$CleaningOptionPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class FcmTokenPaginated with _$FcmTokenPaginated {
  factory FcmTokenPaginated({
    required List<FcmToken> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _FcmTokenPaginated;

  factory FcmTokenPaginated.fromJson(Map<String, dynamic> json) => _$FcmTokenPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class NotificationPaginated with _$NotificationPaginated {
  factory NotificationPaginated({
    required List<NotificationModel> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _NotificationPaginated;

  factory NotificationPaginated.fromJson(Map<String, dynamic> json) => _$NotificationPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class PaymentPaginated with _$PaymentPaginated {
  factory PaymentPaginated({
    required List<Payment> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _PaymentPaginated;

  factory PaymentPaginated.fromJson(Map<String, dynamic> json) => _$PaymentPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReservationPaginated with _$ReservationPaginated {
  factory ReservationPaginated({
    required List<Reservation> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _ReservationPaginated;

  factory ReservationPaginated.fromJson(Map<String, dynamic> json) => _$ReservationPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReviewPaginated with _$ReviewPaginated {
  factory ReviewPaginated({
    required List<Review> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _ReviewPaginated;

  factory ReviewPaginated.fromJson(Map<String, dynamic> json) => _$ReviewPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReviewPhotoPaginated with _$ReviewPhotoPaginated {
  factory ReviewPhotoPaginated({
    required List<ReviewPhoto> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _ReviewPhotoPaginated;

  factory ReviewPhotoPaginated.fromJson(Map<String, dynamic> json) => _$ReviewPhotoPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SuperAdminPaginated with _$SuperAdminPaginated {
  factory SuperAdminPaginated({
    required List<SuperAdmin> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _SuperAdminPaginated;

  factory SuperAdminPaginated.fromJson(Map<String, dynamic> json) => _$SuperAdminPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class TimeSlotPaginated with _$TimeSlotPaginated {
  factory TimeSlotPaginated({
    required List<TimeSlot> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _TimeSlotPaginated;

  factory TimeSlotPaginated.fromJson(Map<String, dynamic> json) => _$TimeSlotPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class UserPaginated with _$UserPaginated {
  factory UserPaginated({
    required List<User> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _UserPaginated;

  factory UserPaginated.fromJson(Map<String, dynamic> json) => _$UserPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class WalletTransactionPaginated with _$WalletTransactionPaginated {
  factory WalletTransactionPaginated({
    required List<WalletTransaction> data,
    required int currentPage,
    required int lastPage,
    required int perPage,
    required int total,
  }) = _WalletTransactionPaginated;

  factory WalletTransactionPaginated.fromJson(Map<String, dynamic> json) => _$WalletTransactionPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}
