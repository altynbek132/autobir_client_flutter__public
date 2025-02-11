// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminLoginRequestImpl _$$AdminLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLoginRequestImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AdminLoginRequestImplToJson(
        _$AdminLoginRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$AdminLoginResponseImpl _$$AdminLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLoginResponseImpl(
      admin: Admin.fromJson(json['admin'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AdminLoginResponseImplToJson(
        _$AdminLoginResponseImpl instance) =>
    <String, dynamic>{
      'admin': instance.admin.toJson(),
      'token': instance.token,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };

_$SignupRequestImpl _$$SignupRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignupRequestImpl(
      name: json['name'] as String,
      mobilePhone: json['mobile_phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignupRequestImplToJson(_$SignupRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile_phone': instance.mobilePhone,
      'password': instance.password,
    };

_$SignupResponseImpl _$$SignupResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignupResponseImpl(
      message: json['message'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignupResponseImplToJson(
        _$SignupResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user.toJson(),
    };

_$VerifyMobilePhoneRequestImpl _$$VerifyMobilePhoneRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyMobilePhoneRequestImpl(
      mobilePhone: json['mobile_phone'] as String,
      verificationCode: json['verification_code'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$VerifyMobilePhoneRequestImplToJson(
        _$VerifyMobilePhoneRequestImpl instance) =>
    <String, dynamic>{
      'mobile_phone': instance.mobilePhone,
      'verification_code': instance.verificationCode,
      'password': instance.password,
    };

_$SigninRequestImpl _$$SigninRequestImplFromJson(Map<String, dynamic> json) =>
    _$SigninRequestImpl(
      mobilePhone: json['mobile_phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SigninRequestImplToJson(_$SigninRequestImpl instance) =>
    <String, dynamic>{
      'mobile_phone': instance.mobilePhone,
      'password': instance.password,
    };

_$ResetPasswordRequestImpl _$$ResetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestImpl(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$ResetPasswordRequestImplToJson(
        _$ResetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };

_$CarWashSearchRequestImpl _$$CarWashSearchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CarWashSearchRequestImpl(
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      cleaningOptions: (json['cleaning_options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      sortBy: json['sort_by'] as String?,
      priceMin: (json['price_min'] as num?)?.toDouble(),
      priceMax: (json['price_max'] as num?)?.toDouble(),
      cityId: (json['city_id'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CarWashSearchRequestImplToJson(
        _$CarWashSearchRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'cleaning_options': instance.cleaningOptions,
      'lat': instance.lat,
      'lng': instance.lng,
      'sort_by': instance.sortBy,
      'price_min': instance.priceMin,
      'price_max': instance.priceMax,
      'city_id': instance.cityId,
      'per_page': instance.perPage,
      'page': instance.page,
    };

_$CarWashMapSearchRequestImpl _$$CarWashMapSearchRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CarWashMapSearchRequestImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      radius: (json['radius'] as num).toDouble(),
      perPage: (json['per_page'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CarWashMapSearchRequestImplToJson(
        _$CarWashMapSearchRequestImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'radius': instance.radius,
      'per_page': instance.perPage,
      'page': instance.page,
    };

_$AddReviewRequestImpl _$$AddReviewRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReviewRequestImpl(
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$AddReviewRequestImplToJson(
        _$AddReviewRequestImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
    };

_$CarRequestImpl _$$CarRequestImplFromJson(Map<String, dynamic> json) =>
    _$CarRequestImpl(
      carTypeId: (json['car_type_id'] as num).toInt(),
      make: json['make'] as String?,
      model: json['model'] as String?,
      year: json['year'] as String?,
      licensePlate: json['license_plate'] as String?,
    );

Map<String, dynamic> _$$CarRequestImplToJson(_$CarRequestImpl instance) =>
    <String, dynamic>{
      'car_type_id': instance.carTypeId,
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'license_plate': instance.licensePlate,
    };

_$PaymentLinkResponseImpl _$$PaymentLinkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkResponseImpl(
      paymentLink: json['payment_link'] as String,
    );

Map<String, dynamic> _$$PaymentLinkResponseImplToJson(
        _$PaymentLinkResponseImpl instance) =>
    <String, dynamic>{
      'payment_link': instance.paymentLink,
    };

_$WalletBalanceResponseImpl _$$WalletBalanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletBalanceResponseImpl(
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$WalletBalanceResponseImplToJson(
        _$WalletBalanceResponseImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
    };

_$ReservationCreateRequestImpl _$$ReservationCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationCreateRequestImpl(
      carWashId: (json['car_wash_id'] as num).toInt(),
      carId: (json['car_id'] as num).toInt(),
      timeSlotId: (json['time_slot_id'] as num).toInt(),
      cleaningOptionIds: (json['cleaning_option_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$ReservationCreateRequestImplToJson(
        _$ReservationCreateRequestImpl instance) =>
    <String, dynamic>{
      'car_wash_id': instance.carWashId,
      'car_id': instance.carId,
      'time_slot_id': instance.timeSlotId,
      'cleaning_option_ids': instance.cleaningOptionIds,
      'comment': instance.comment,
    };

_$ReservationUpdateRequestImpl _$$ReservationUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationUpdateRequestImpl(
      carId: (json['car_id'] as num?)?.toInt(),
      timeSlotId: (json['time_slot_id'] as num?)?.toInt(),
      cleaningOptionIds: (json['cleaning_option_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$ReservationUpdateRequestImplToJson(
        _$ReservationUpdateRequestImpl instance) =>
    <String, dynamic>{
      'car_id': instance.carId,
      'time_slot_id': instance.timeSlotId,
      'cleaning_option_ids': instance.cleaningOptionIds,
      'comment': instance.comment,
    };

_$SuperAdminLoginRequestImpl _$$SuperAdminLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SuperAdminLoginRequestImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SuperAdminLoginRequestImplToJson(
        _$SuperAdminLoginRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$SuperAdminLoginResponseImpl _$$SuperAdminLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuperAdminLoginResponseImpl(
      superadmin:
          SuperAdmin.fromJson(json['superadmin'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$SuperAdminLoginResponseImplToJson(
        _$SuperAdminLoginResponseImpl instance) =>
    <String, dynamic>{
      'superadmin': instance.superadmin.toJson(),
      'token': instance.token,
    };

_$TopCarWashesRequestImpl _$$TopCarWashesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TopCarWashesRequestImpl(
      cityId: (json['city_id'] as num).toInt(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopCarWashesRequestImplToJson(
        _$TopCarWashesRequestImpl instance) =>
    <String, dynamic>{
      'city_id': instance.cityId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'per_page': instance.perPage,
    };

_$DashboardOverviewDTOImpl _$$DashboardOverviewDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardOverviewDTOImpl(
      carWashes: (json['car_washes'] as num).toInt(),
      users: (json['users'] as num).toInt(),
      cities: (json['cities'] as num).toInt(),
    );

Map<String, dynamic> _$$DashboardOverviewDTOImplToJson(
        _$DashboardOverviewDTOImpl instance) =>
    <String, dynamic>{
      'car_washes': instance.carWashes,
      'users': instance.users,
      'cities': instance.cities,
    };

_$UpdateUserProfileRequestImpl _$$UpdateUserProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserProfileRequestImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      mobilePhone: json['mobile_phone'] as String?,
      photoPath: json['photo'] as String?,
    );

Map<String, dynamic> _$$UpdateUserProfileRequestImplToJson(
    _$UpdateUserProfileRequestImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'email': instance.email,
    'mobile_phone': instance.mobilePhone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('photo', instance.photoPath);
  return val;
}
