import 'package:api_client/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

@freezed
class AdminLoginRequest with _$AdminLoginRequest {
  factory AdminLoginRequest({
    required String username,
    required String password,
  }) = _AdminLoginRequest;

  factory AdminLoginRequest.fromJson(Map<String, dynamic> json) => _$AdminLoginRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class AdminLoginResponse with _$AdminLoginResponse {
  factory AdminLoginResponse({
    required Admin admin,
    required String token,
  }) = _AdminLoginResponse;

  factory AdminLoginResponse.fromJson(Map<String, dynamic> json) => _$AdminLoginResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required String accessToken,
    required String tokenType,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SignupRequest with _$SignupRequest {
  factory SignupRequest({
    required String name,
    required String mobilePhone,
    required String password,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SignupResponse with _$SignupResponse {
  factory SignupResponse({
    required String message,
    required User user, // Assuming your API returns the created user details
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class VerifyMobilePhoneRequest with _$VerifyMobilePhoneRequest {
  factory VerifyMobilePhoneRequest({
    required String mobilePhone,
    required String verificationCode,
    required String password,
  }) = _VerifyMobilePhoneRequest;

  factory VerifyMobilePhoneRequest.fromJson(Map<String, dynamic> json) => _$VerifyMobilePhoneRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SigninRequest with _$SigninRequest {
  factory SigninRequest({
    required String mobilePhone,
    required String password,
  }) = _SigninRequest;

  factory SigninRequest.fromJson(Map<String, dynamic> json) => _$SigninRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
  factory ResetPasswordRequest({
    required String oldPassword,
    required String newPassword,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarWashSearchRequest with _$CarWashSearchRequest {
  factory CarWashSearchRequest({
    String? name,
    double? rating,
    List<String>? cleaningOptions,
    double? lat,
    double? lng,
    String? sortBy,
    double? priceMin,
    double? priceMax,
    int? cityId,
    int? perPage,
    int? page,
  }) = _CarWashSearchRequest;

  factory CarWashSearchRequest.fromJson(Map<String, dynamic> json) => _$CarWashSearchRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarWashMapSearchRequest with _$CarWashMapSearchRequest {
  factory CarWashMapSearchRequest({
    required double lat,
    required double lng,
    required double radius,
    int? perPage,
    int? page,
  }) = _CarWashMapSearchRequest;

  factory CarWashMapSearchRequest.fromJson(Map<String, dynamic> json) => _$CarWashMapSearchRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class AddReviewRequest with _$AddReviewRequest {
  factory AddReviewRequest({
    required int rating,
    required String comment,
  }) = _AddReviewRequest;

  factory AddReviewRequest.fromJson(Map<String, dynamic> json) => _$AddReviewRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class CarRequest with _$CarRequest {
  factory CarRequest({
    required int carTypeId,
    String? make,
    String? model,
    String? year,
    String? licensePlate,
  }) = _CarRequest;

  factory CarRequest.fromJson(Map<String, dynamic> json) => _$CarRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class PaymentLinkResponse with _$PaymentLinkResponse {
  factory PaymentLinkResponse({
    required String paymentLink,
  }) = _PaymentLinkResponse;

  factory PaymentLinkResponse.fromJson(Map<String, dynamic> json) => _$PaymentLinkResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class WalletBalanceResponse with _$WalletBalanceResponse {
  factory WalletBalanceResponse({
    required double balance,
  }) = _WalletBalanceResponse;

  factory WalletBalanceResponse.fromJson(Map<String, dynamic> json) => _$WalletBalanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReservationCreateRequest with _$ReservationCreateRequest {
  factory ReservationCreateRequest({
    required int carWashId,
    required int carId,
    required int timeSlotId,
    List<int>? cleaningOptionIds,
    String? comment,
  }) = _ReservationCreateRequest;

  factory ReservationCreateRequest.fromJson(Map<String, dynamic> json) => _$ReservationCreateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class ReservationUpdateRequest with _$ReservationUpdateRequest {
  factory ReservationUpdateRequest({
    int? carId,
    int? timeSlotId,
    List<int>? cleaningOptionIds,
    String? comment,
  }) = _ReservationUpdateRequest;

  factory ReservationUpdateRequest.fromJson(Map<String, dynamic> json) => _$ReservationUpdateRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SuperAdminLoginRequest with _$SuperAdminLoginRequest {
  factory SuperAdminLoginRequest({
    required String username,
    required String password,
  }) = _SuperAdminLoginRequest;

  factory SuperAdminLoginRequest.fromJson(Map<String, dynamic> json) => _$SuperAdminLoginRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class SuperAdminLoginResponse with _$SuperAdminLoginResponse {
  factory SuperAdminLoginResponse({
    required SuperAdmin superadmin,
    required String token,
  }) = _SuperAdminLoginResponse;

  factory SuperAdminLoginResponse.fromJson(Map<String, dynamic> json) => _$SuperAdminLoginResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class TopCarWashesRequest with _$TopCarWashesRequest {
  factory TopCarWashesRequest({
    required int cityId,
    String? startDate,
    String? endDate,
    int? perPage,
  }) = _TopCarWashesRequest;

  factory TopCarWashesRequest.fromJson(Map<String, dynamic> json) => _$TopCarWashesRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class DashboardOverviewDTO with _$DashboardOverviewDTO {
  factory DashboardOverviewDTO({
    required int carWashes,
    required int users,
    required int cities,
  }) = _DashboardOverviewDTO;

  factory DashboardOverviewDTO.fromJson(Map<String, dynamic> json) => _$DashboardOverviewDTOFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}

@freezed
class UpdateUserProfileRequest with _$UpdateUserProfileRequest {
  factory UpdateUserProfileRequest({
    String? name,
    String? email,
    String? mobilePhone,
    @JsonKey(name: 'photo', includeIfNull: false) String? photoPath,
  }) = _UpdateUserProfileRequest;

  factory UpdateUserProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateUserProfileRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => super.toJson();
}
