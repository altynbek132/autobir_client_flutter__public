import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

enum ReservationStatus { pending, confirmed, cancelled, completed }

enum PaymentStatus { pending, completed, failed }

enum PaymentMethod { gateway, wallet }

enum WalletTransactionType { deposit, payment }

enum WalletTransactionStatus { pending, completed, failed }

@freezed
class Admin with _$Admin {
  factory Admin({
    required int id,
    required String username,
    required String password,
    @Default([]) List<CarWash> carWashes,
    required DateTime createdAt,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class Bookmark with _$Bookmark {
  factory Bookmark({
    required int id,
    required int userId,
    required int carWashId,
    User? user,
    CarWash? carWash,
    required DateTime createdAt,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) => _$BookmarkFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class Car with _$Car {
  factory Car({
    required int id,
    required int userId,
    required int carTypeId,
    String? make,
    String? model,
    String? year,
    String? licensePlate,
    User? user,
    CarType? carType,
    @Default([]) List<Reservation> reservations,
    required DateTime createdAt,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarType with _$CarType {
  factory CarType({
    required int id,
    required String name,
    String? description,
    @Default([]) List<Car> cars,
    @Default([]) List<CleaningOption> cleaningOptions,
    required DateTime createdAt,
  }) = _CarType;

  factory CarType.fromJson(Map<String, dynamic> json) => _$CarTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarWash with _$CarWash {
  factory CarWash({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    double? overallRating,
    String? photoUrl,
    required String address,
    required int availableWashingBoxes,
    required int cityId,
    bool? status,
    bool? isBookmarked,
    double? revenue,
    City? city,
    @Default([]) List<Review> reviews,
    @Default([]) List<CleaningOption> cleaningOptions,
    @Default([]) List<TimeSlot> timeSlots,
    @Default([]) List<Reservation> reservations,
    @Default([]) List<Bookmark> bookmarks,
    @Default([]) List<Admin> admins,
    required DateTime createdAt,
  }) = _CarWash;

  factory CarWash.fromJson(Map<String, dynamic> json) => _$CarWashFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class City with _$City {
  factory City({
    required int id,
    required String name,
    @Default([]) List<CarWash> carWashes,
    required DateTime createdAt,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CleaningOption with _$CleaningOption {
  factory CleaningOption({
    required int id,
    required int carWashId,
    required int carTypeId,
    required String name,
    String? description,
    required double price,
    CarWash? carWash,
    CarType? carType,
    @Default([]) List<Reservation> reservations,
    required DateTime createdAt,
  }) = _CleaningOption;

  factory CleaningOption.fromJson(Map<String, dynamic> json) => _$CleaningOptionFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class FcmToken with _$FcmToken {
  factory FcmToken({
    required int id,
    required int userId,
    required String token,
    User? user,
    required DateTime createdAt,
  }) = _FcmToken;

  factory FcmToken.fromJson(Map<String, dynamic> json) => _$FcmTokenFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required int id,
    required int userId,
    required String message,
    required DateTime time,
    required bool isRead,
    User? user,
    required DateTime createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class Payment with _$Payment {
  factory Payment({
    required int id,
    required int reservationId,
    required double amount,
    String? paymentGatewayLink,
    required PaymentStatus status,
    required PaymentMethod method,
    Reservation? reservation,
    required DateTime createdAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class Reservation with _$Reservation {
  factory Reservation({
    required int id,
    required int userId,
    required int carId,
    required int carWashId,
    required int timeSlotId,
    required ReservationStatus status,
    String? comment,
    String? cancellationReason,
    double? totalAmount,
    User? user,
    Car? car,
    CarWash? carWash,
    TimeSlot? timeSlot,
    @Default([]) List<CleaningOption> cleaningOptions,
    required DateTime createdAt,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class Review with _$Review {
  factory Review({
    required int id,
    required int userId,
    required int carWashId,
    required int rating,
    String? comment,
    User? user,
    CarWash? carWash,
    @Default([]) List<ReviewPhoto> photos,
    required DateTime createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReviewPhoto with _$ReviewPhoto {
  factory ReviewPhoto({
    required int id,
    required int reviewId,
    String? photoUrl,
    Review? review,
    required DateTime createdAt,
  }) = _ReviewPhoto;

  factory ReviewPhoto.fromJson(Map<String, dynamic> json) => _$ReviewPhotoFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SuperAdmin with _$SuperAdmin {
  factory SuperAdmin({
    required int id,
    required String username,
    required String password,
    required DateTime createdAt,
  }) = _SuperAdmin;

  factory SuperAdmin.fromJson(Map<String, dynamic> json) => _$SuperAdminFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class TimeSlot with _$TimeSlot {
  factory TimeSlot({
    required int id,
    required int carWashId,
    required DateTime startTime,
    required DateTime endTime,
    required bool isAvailable,
    CarWash? carWash,
    Reservation? reservation,
    required DateTime createdAt,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) => _$TimeSlotFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class User with _$User {
  factory User({
    required int id,
    String? name,
    String? email,
    required String mobilePhone,
    required String password,
    String? verificationCode,
    String? photoUrl,
    DateTime? emailVerifiedAt,
    DateTime? mobilePhoneVerifiedAt,
    @Default([]) List<Car> cars,
    @Default([]) List<Reservation> reservations,
    @Default([]) List<Bookmark> bookmarks,
    @Default([]) List<NotificationModel> notifications,
    @Default([]) List<Review> reviews,
    @Default([]) List<FcmToken> fcmTokens,
    @Default([]) List<WalletTransaction> walletTransactions,
    required DateTime createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class WalletTransaction with _$WalletTransaction {
  factory WalletTransaction({
    required int id,
    required int userId,
    required double amount,
    required WalletTransactionType type,
    required WalletTransactionStatus status,
    User? user,
    required DateTime createdAt,
  }) = _WalletTransaction;

  factory WalletTransaction.fromJson(Map<String, dynamic> json) => _$WalletTransactionFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}
