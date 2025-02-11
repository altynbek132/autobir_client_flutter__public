// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminImpl _$$AdminImplFromJson(Map<String, dynamic> json) => _$AdminImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      password: json['password'] as String,
      carWashes: (json['car_washes'] as List<dynamic>?)
              ?.map((e) => CarWash.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AdminImplToJson(_$AdminImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'car_washes': instance.carWashes.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      carWashId: (json['car_wash_id'] as num).toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      carWash: json['car_wash'] == null
          ? null
          : CarWash.fromJson(json['car_wash'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'car_wash_id': instance.carWashId,
      'user': instance.user?.toJson(),
      'car_wash': instance.carWash?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      carTypeId: (json['car_type_id'] as num).toInt(),
      make: json['make'] as String?,
      model: json['model'] as String?,
      year: json['year'] as String?,
      licensePlate: json['license_plate'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      carType: json['car_type'] == null
          ? null
          : CarType.fromJson(json['car_type'] as Map<String, dynamic>),
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'car_type_id': instance.carTypeId,
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'license_plate': instance.licensePlate,
      'user': instance.user?.toJson(),
      'car_type': instance.carType?.toJson(),
      'reservations': instance.reservations.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$CarTypeImpl _$$CarTypeImplFromJson(Map<String, dynamic> json) =>
    _$CarTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cleaningOptions: (json['cleaning_options'] as List<dynamic>?)
              ?.map((e) => CleaningOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CarTypeImplToJson(_$CarTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'cars': instance.cars.map((e) => e.toJson()).toList(),
      'cleaning_options':
          instance.cleaningOptions.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$CarWashImpl _$$CarWashImplFromJson(Map<String, dynamic> json) =>
    _$CarWashImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      overallRating: (json['overall_rating'] as num?)?.toDouble(),
      photoUrl: json['photo_url'] as String?,
      address: json['address'] as String,
      availableWashingBoxes: (json['available_washing_boxes'] as num).toInt(),
      cityId: (json['city_id'] as num).toInt(),
      status: json['status'] as bool?,
      isBookmarked: json['is_bookmarked'] as bool?,
      revenue: (json['revenue'] as num?)?.toDouble(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cleaningOptions: (json['cleaning_options'] as List<dynamic>?)
              ?.map((e) => CleaningOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timeSlots: (json['time_slots'] as List<dynamic>?)
              ?.map((e) => TimeSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bookmarks: (json['bookmarks'] as List<dynamic>?)
              ?.map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      admins: (json['admins'] as List<dynamic>?)
              ?.map((e) => Admin.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CarWashImplToJson(_$CarWashImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'overall_rating': instance.overallRating,
      'photo_url': instance.photoUrl,
      'address': instance.address,
      'available_washing_boxes': instance.availableWashingBoxes,
      'city_id': instance.cityId,
      'status': instance.status,
      'is_bookmarked': instance.isBookmarked,
      'revenue': instance.revenue,
      'city': instance.city?.toJson(),
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
      'cleaning_options':
          instance.cleaningOptions.map((e) => e.toJson()).toList(),
      'time_slots': instance.timeSlots.map((e) => e.toJson()).toList(),
      'reservations': instance.reservations.map((e) => e.toJson()).toList(),
      'bookmarks': instance.bookmarks.map((e) => e.toJson()).toList(),
      'admins': instance.admins.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      carWashes: (json['car_washes'] as List<dynamic>?)
              ?.map((e) => CarWash.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'car_washes': instance.carWashes.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$CleaningOptionImpl _$$CleaningOptionImplFromJson(Map<String, dynamic> json) =>
    _$CleaningOptionImpl(
      id: (json['id'] as num).toInt(),
      carWashId: (json['car_wash_id'] as num).toInt(),
      carTypeId: (json['car_type_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      carWash: json['car_wash'] == null
          ? null
          : CarWash.fromJson(json['car_wash'] as Map<String, dynamic>),
      carType: json['car_type'] == null
          ? null
          : CarType.fromJson(json['car_type'] as Map<String, dynamic>),
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CleaningOptionImplToJson(
        _$CleaningOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car_wash_id': instance.carWashId,
      'car_type_id': instance.carTypeId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'car_wash': instance.carWash?.toJson(),
      'car_type': instance.carType?.toJson(),
      'reservations': instance.reservations.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$FcmTokenImpl _$$FcmTokenImplFromJson(Map<String, dynamic> json) =>
    _$FcmTokenImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      token: json['token'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$FcmTokenImplToJson(_$FcmTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'token': instance.token,
      'user': instance.user?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      message: json['message'] as String,
      time: DateTime.parse(json['time'] as String),
      isRead: json['is_read'] as bool,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'message': instance.message,
      'time': instance.time.toIso8601String(),
      'is_read': instance.isRead,
      'user': instance.user?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: (json['id'] as num).toInt(),
      reservationId: (json['reservation_id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      paymentGatewayLink: json['payment_gateway_link'] as String?,
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      method: $enumDecode(_$PaymentMethodEnumMap, json['method']),
      reservation: json['reservation'] == null
          ? null
          : Reservation.fromJson(json['reservation'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservation_id': instance.reservationId,
      'amount': instance.amount,
      'payment_gateway_link': instance.paymentGatewayLink,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'method': _$PaymentMethodEnumMap[instance.method]!,
      'reservation': instance.reservation?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'pending',
  PaymentStatus.completed: 'completed',
  PaymentStatus.failed: 'failed',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.gateway: 'gateway',
  PaymentMethod.wallet: 'wallet',
};

_$ReservationImpl _$$ReservationImplFromJson(Map<String, dynamic> json) =>
    _$ReservationImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      carId: (json['car_id'] as num).toInt(),
      carWashId: (json['car_wash_id'] as num).toInt(),
      timeSlotId: (json['time_slot_id'] as num).toInt(),
      status: $enumDecode(_$ReservationStatusEnumMap, json['status']),
      comment: json['comment'] as String?,
      cancellationReason: json['cancellation_reason'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      car: json['car'] == null
          ? null
          : Car.fromJson(json['car'] as Map<String, dynamic>),
      carWash: json['car_wash'] == null
          ? null
          : CarWash.fromJson(json['car_wash'] as Map<String, dynamic>),
      timeSlot: json['time_slot'] == null
          ? null
          : TimeSlot.fromJson(json['time_slot'] as Map<String, dynamic>),
      cleaningOptions: (json['cleaning_options'] as List<dynamic>?)
              ?.map((e) => CleaningOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReservationImplToJson(_$ReservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'car_id': instance.carId,
      'car_wash_id': instance.carWashId,
      'time_slot_id': instance.timeSlotId,
      'status': _$ReservationStatusEnumMap[instance.status]!,
      'comment': instance.comment,
      'cancellation_reason': instance.cancellationReason,
      'total_amount': instance.totalAmount,
      'user': instance.user?.toJson(),
      'car': instance.car?.toJson(),
      'car_wash': instance.carWash?.toJson(),
      'time_slot': instance.timeSlot?.toJson(),
      'cleaning_options':
          instance.cleaningOptions.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$ReservationStatusEnumMap = {
  ReservationStatus.pending: 'pending',
  ReservationStatus.confirmed: 'confirmed',
  ReservationStatus.cancelled: 'cancelled',
  ReservationStatus.completed: 'completed',
};

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      carWashId: (json['car_wash_id'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      carWash: json['car_wash'] == null
          ? null
          : CarWash.fromJson(json['car_wash'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => ReviewPhoto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'car_wash_id': instance.carWashId,
      'rating': instance.rating,
      'comment': instance.comment,
      'user': instance.user?.toJson(),
      'car_wash': instance.carWash?.toJson(),
      'photos': instance.photos.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$ReviewPhotoImpl _$$ReviewPhotoImplFromJson(Map<String, dynamic> json) =>
    _$ReviewPhotoImpl(
      id: (json['id'] as num).toInt(),
      reviewId: (json['review_id'] as num).toInt(),
      photoUrl: json['photo_url'] as String?,
      review: json['review'] == null
          ? null
          : Review.fromJson(json['review'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ReviewPhotoImplToJson(_$ReviewPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'review_id': instance.reviewId,
      'photo_url': instance.photoUrl,
      'review': instance.review?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$SuperAdminImpl _$$SuperAdminImplFromJson(Map<String, dynamic> json) =>
    _$SuperAdminImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      password: json['password'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SuperAdminImplToJson(_$SuperAdminImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotImpl(
      id: (json['id'] as num).toInt(),
      carWashId: (json['car_wash_id'] as num).toInt(),
      startTime: DateTime.parse(json['start_time'] as String),
      endTime: DateTime.parse(json['end_time'] as String),
      isAvailable: json['is_available'] as bool,
      carWash: json['car_wash'] == null
          ? null
          : CarWash.fromJson(json['car_wash'] as Map<String, dynamic>),
      reservation: json['reservation'] == null
          ? null
          : Reservation.fromJson(json['reservation'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'car_wash_id': instance.carWashId,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime.toIso8601String(),
      'is_available': instance.isAvailable,
      'car_wash': instance.carWash?.toJson(),
      'reservation': instance.reservation?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobilePhone: json['mobile_phone'] as String,
      password: json['password'] as String,
      verificationCode: json['verification_code'] as String?,
      photoUrl: json['photo_url'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      mobilePhoneVerifiedAt: json['mobile_phone_verified_at'] == null
          ? null
          : DateTime.parse(json['mobile_phone_verified_at'] as String),
      cars: (json['cars'] as List<dynamic>?)
              ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reservations: (json['reservations'] as List<dynamic>?)
              ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      bookmarks: (json['bookmarks'] as List<dynamic>?)
              ?.map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map(
                  (e) => NotificationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fcmTokens: (json['fcm_tokens'] as List<dynamic>?)
              ?.map((e) => FcmToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      walletTransactions: (json['wallet_transactions'] as List<dynamic>?)
              ?.map(
                  (e) => WalletTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'mobile_phone': instance.mobilePhone,
      'password': instance.password,
      'verification_code': instance.verificationCode,
      'photo_url': instance.photoUrl,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'mobile_phone_verified_at':
          instance.mobilePhoneVerifiedAt?.toIso8601String(),
      'cars': instance.cars.map((e) => e.toJson()).toList(),
      'reservations': instance.reservations.map((e) => e.toJson()).toList(),
      'bookmarks': instance.bookmarks.map((e) => e.toJson()).toList(),
      'notifications': instance.notifications.map((e) => e.toJson()).toList(),
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
      'fcm_tokens': instance.fcmTokens.map((e) => e.toJson()).toList(),
      'wallet_transactions':
          instance.walletTransactions.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_$WalletTransactionImpl _$$WalletTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletTransactionImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$WalletTransactionTypeEnumMap, json['type']),
      status: $enumDecode(_$WalletTransactionStatusEnumMap, json['status']),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WalletTransactionImplToJson(
        _$WalletTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'amount': instance.amount,
      'type': _$WalletTransactionTypeEnumMap[instance.type]!,
      'status': _$WalletTransactionStatusEnumMap[instance.status]!,
      'user': instance.user?.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$WalletTransactionTypeEnumMap = {
  WalletTransactionType.deposit: 'deposit',
  WalletTransactionType.payment: 'payment',
};

const _$WalletTransactionStatusEnumMap = {
  WalletTransactionStatus.pending: 'pending',
  WalletTransactionStatus.completed: 'completed',
  WalletTransactionStatus.failed: 'failed',
};
