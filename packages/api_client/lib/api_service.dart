import 'dart:io';

import 'package:api_client/dto/dto.dart';
import 'package:api_client/models.dart';
import 'package:api_client/paginate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

const baseUrl = "http://autobir.bar/api/v1";

class ApiServiceDio {
  final Dio dio;

  ApiServiceDio(this.dio);

  Future<void> superadminExportUsers() async {
    const path = '/superadmin/export-users';
    final downloads = await getDownloadsDirectory();
    await dio.download(
      '$baseUrl$path',
      '${downloads!.path}users.xlsx',
    );
  }
}

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
// ====================================================== admin ===================================================== //
  @POST('/admin/login')
  Future<AdminLoginResponse> adminLogin(@Body() AdminLoginRequest body);

  @POST('/admin/logout')
  Future<void> adminLogout();

  @GET('/admin/reservations')
  Future<ReservationPaginated> getAdminReservations({
    @Query('city_id') int? cityId,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });
// ====================================================== admin ===================================================== //
// ====================================================== auth ====================================================== //
  @POST('auth/signup')
  Future<SignupResponse> signup(@Body() SignupRequest request);

  @POST('auth/verify-sms')
  Future<AuthResponse> verifyMobilePhone(@Body() VerifyMobilePhoneRequest request);

  @POST('auth/signin')
  Future<AuthResponse> signin(@Body() SigninRequest request);

  @POST('auth/logout')
  Future<void> logout();

  @POST('auth/reset-password')
  Future<void> resetPassword(@Body() ResetPasswordRequest request);
// ====================================================== auth ====================================================== //
// ==================================================== bookmarks =================================================== //
  // Fetch paginated list of bookmarks
  @GET('/bookmarks')
  Future<BookmarkPaginated> getBookmarks({
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  // Create a new bookmark
  @POST('/bookmarks')
  Future<Bookmark> createBookmark(@Query('car_wash_id') int carWashId);

  // Delete a bookmark by ID
  @DELETE('/bookmarks/{id}')
  Future<void> deleteBookmark(@Path('id') int id);
// ==================================================== bookmarks =================================================== //
// ====================================================== cars ====================================================== //
  @GET('/user/cars')
  Future<CarPaginated> getCars({
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  @POST('/user/cars')
  Future<Car> addCar(@Body() CarRequest carRequest);

  @GET('/user/cars/{id}')
  Future<Car> getCar(@Path('id') int id);

  @PUT('/user/cars/{id}')
  Future<Car> updateCar(@Path('id') int id, @Body() CarRequest carRequest);

  @DELETE('/user/cars/{id}')
  Future<void> deleteCar(@Path('id') int id);
// ====================================================== cars ====================================================== //
// ==================================================== car types =================================================== //
  @GET('/car-types')
  Future<List<CarType>> getAllCarTypes();
// ==================================================== car types =================================================== //
// ==================================================== car wash ==================================================== //
  @GET('/car-washes')
  Future<CarWashPaginated> getCarWashes({
    @Query('city_id') int? cityId,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  @GET('/car-washes/{id}')
  Future<CarWash> getCarWashById(@Path('id') int id);

  @POST('/car-washes/{id}/reviews')
  Future<Review> addCarWashReview(
    @Path('id') int id,
    @Body() AddReviewRequest body,
  );

  @GET('/car-washes/{id}/reviews')
  Future<ReviewPaginated> getCarWashReviews({
    @Path('id') required int id,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  @GET('/car-washes/{id}/options')
  Future<CleaningOptionPaginated> getCarWashOptions({
    @Path('id') required int id,
    @Query('car_type_id') required int carTypeId,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  @GET('/car-washes/{id}/time-slots')
  Future<TimeSlotPaginated> getCarWashTimeSlots({
    @Path('id') required int id,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });

  @POST('/car-washes/search')
  Future<CarWashPaginated> searchCarWashes(@Body() CarWashSearchRequest request);

  @POST('/car-washes/map-search')
  Future<CarWashPaginated> mapSearchCarWashes(@Body() CarWashMapSearchRequest request);

  @GET('/car-washes/popular')
  Future<CarWashPaginated> getPopularCarWashes({
    @Query('city_id') int? cityId,
    @Query('per_page') int perPage = 15,
    @Query('page') int? page,
  });
// ==================================================== car wash ==================================================== //
// ====================================================== city ====================================================== //
  @GET('/cities')
  Future<List<City>> getCities();
// ====================================================== city ====================================================== //
// ======================================================= fcm ====================================================== //
  @POST('/fcm-tokens')
  Future<FcmToken> storeFcmToken(@Query('token') int token);
// ======================================================= fcm ====================================================== //
// ================================================== notification ================================================== //
  @GET('/notifications')
  Future<NotificationPaginated> getNotifications({@Query('per_page') int perPage = 15, @Query('page') int? page});

  @POST('/notifications/read')
  Future<void> markNotificationsAsRead(@Query('notification_ids') List<int> notificationIds);

  @POST('/notifications/read-all')
  Future<void> markAllNotificationsAsRead();
// ================================================== notification ================================================== //
// ===================================================== payment ==================================================== //
  @GET('/reservations/{reservationId}/pay')
  Future<PaymentLinkResponse> initiatePayment(
    @Path('reservationId') int reservationId,
    @Query('amount') double amount,
  );

  @POST('/reservations/{reservationId}/pay-with-wallet')
  Future<void> payWithWallet(
    @Path('reservationId') int reservationId,
  );

  @POST('/wallet/deposit')
  Future<PaymentLinkResponse> depositToWallet({
    @Query('amount') required double amount,
  });

  @GET('/wallet/transactions')
  Future<WalletTransactionPaginated> walletTransactionHistory({
    @Query('page') int page = 1,
    @Query('per_page') int perPage = 10,
  });

  @GET('/wallet/balance')
  Future<WalletBalanceResponse> walletBalance();
// ===================================================== payment ==================================================== //
// ================================================== reservations ================================================== //
  @GET('/reservations')
  Future<ReservationPaginated> getReservations({
    @Query('page') int? page,
    @Query('per_page') int perPage = 15,
  });

  @POST('/reservations')
  Future<Reservation> createReservation(@Body() ReservationCreateRequest body);

  @GET('/reservations/{id}')
  Future<Reservation> getReservation(@Path("id") int id);

  @PUT('/reservations/{id}')
  Future<Reservation> updateReservation(
    @Path('id') int id,
    @Body() ReservationUpdateRequest body,
  );

  @DELETE('/reservations/{id}/cancel')
  Future<void> cancelReservation(
    @Path('id') int id,
    @Query('cancellation_reason') String cancellationReason,
  );
// ================================================== reservations ================================================== //
// =================================================== superadmin =================================================== //
  @POST('/superadmin/login')
  Future<SuperAdminLoginResponse> superAdminLogin(
    @Body() SuperAdminLoginRequest body,
  );

  @POST('/superadmin/logout')
  Future<void> superAdminLogout();

  @GET('/superadmin/dashboard-overview')
  Future<DashboardOverviewDTO> superadminGetDashboardOverview(
    @Query('city_id') int? cityId,
  );

  @GET('/superadmin/top-car-washes')
  Future<CarWashPaginated> superadminGetTopCarWashes(
    @Body() TopCarWashesRequest request,
  );

  @GET('/superadmin/car-washes')
  Future<CarWashPaginated> superadminGetCarWashes({
    @Body() required TopCarWashesRequest request,
  });

  @GET('/superadmin/export-car-washes')
  Future<void> superadminExportCarWashes(
    @Query('city_id') int? cityId,
  );

  @GET('/superadmin/users')
  Future<UserPaginated> superadminGetUsersWithCars(
    @Query('city_id') int? cityId,
  );
// =================================================== superadmin =================================================== //
// ====================================================== user ====================================================== //
  // Retrieve the current user profile
  @GET('/user/profile')
  Future<User> getProfile();

  // Update the user profile
  @POST('/user/profile')
  @MultiPart()
  Future<User> updateProfile({
    @Part() String? name,
    @Part() String? phone,
    @Part() String? email,
    @Part() File? photo,
  });

  // Delete the user
  @DELETE('/user')
  Future<void> deleteUser();
// ====================================================== user ====================================================== //
}
