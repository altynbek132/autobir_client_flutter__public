import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/nav_bar.dart';
import 'package:autobir/presentation/bookmarks/bookmarks.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/add_car/add_car.dart';
import 'package:autobir/presentation/add_car/add_car_success.dart';
import 'package:autobir/presentation/add_card/screen.dart';
import 'package:autobir/presentation/cancel_booking/cancel_booking_screen/cancel_booking_screen.dart';
import 'package:autobir/presentation/car_wash_list/car_wash_list.dart';
import 'package:autobir/presentation/car_wash/car_wash.dart';
import 'package:autobir/presentation/car_wash_list_by_category/car_wash_list_by_category.dart';
import 'package:autobir/presentation/category/screen.dart';
import 'package:autobir/presentation/change_password_screen/change_password_screen.dart';
import 'package:autobir/presentation/create_account/create_account.dart';
import 'package:autobir/presentation/deposit_success/screen.dart';
import 'package:autobir/presentation/deposit_wallet/screen.dart';
import 'package:autobir/presentation/edit_profile/edit_profile.dart';
import 'package:autobir/presentation/payment_webview_wallet/payment_webview.dart';
import 'package:autobir/presentation/profile/profile.dart';
import 'package:autobir/presentation/home/screen.dart';
import 'package:autobir/presentation/location_access/screen.dart';
import 'package:autobir/presentation/map/map_screen.dart';
import 'package:autobir/presentation/my_cars/my_cars.dart';
import 'package:autobir/presentation/new_password/screen.dart';
import 'package:autobir/presentation/notification_access/screen.dart';
import 'package:autobir/presentation/notifications/notifications.dart';
import 'package:autobir/presentation/payment_methods/screen.dart';
import 'package:autobir/presentation/payment_webview/payment_webview.dart';
import 'package:autobir/presentation/popular_list/popular_list.dart';
import 'package:autobir/presentation/preview/preview.dart';
import 'package:autobir/presentation/privacy_policy/screen.dart';
import 'package:autobir/presentation/promos_list/promos_list.dart';
import 'package:autobir/presentation/receipt/receipt_screen.dart';
import 'package:autobir/presentation/reservation_success/reservation_success_screen.dart';
import 'package:autobir/presentation/reservations_history/reservations_history.dart';
import 'package:autobir/presentation/search/search.dart';
import 'package:autobir/presentation/search_filter/search_filter.dart';
import 'package:autobir/presentation/search_results/search_results.dart';
import 'package:autobir/presentation/select_car/select_car.dart';
import 'package:autobir/presentation/select_cleaning_options/select_cleaning_options.dart';
import 'package:autobir/presentation/sign_in/sign_in.dart';
import 'package:autobir/presentation/support/screen.dart';
import 'package:autobir/presentation/verif/verification_code.dart';
import 'package:autobir/presentation/wallet_screen/wallet_screen.dart';
import 'package:autobir/presentation/welcome/screen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  late final List<AutoRouteGuard> guards = [
    AuthGuard(),
  ];

  @override
  List<AutoRoute> get routes => [
        // WELCOME, ONBOARDING
        AutoRoute(page: WelcomeRoute.page),

        // AUTH
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: CreateAccountRoute.page),
        AutoRoute(page: VerificationCodeRoute.page),
        AutoRoute(page: NewPasswordRoute.page),

        // PERMISSIONS ACCESS
        AutoRoute(page: LocationAccessRoute.page),
        AutoRoute(page: NotificationAccessRoute.page),

        // BOOKING ROUTES
        AutoRoute(page: CarWashRoute.page),
        AutoRoute(page: SelectCleaningOptionsRoute.page),
        AutoRoute(page: SelectCarRoute.page),
        AutoRoute(page: PreviewRoute.page),
        AutoRoute(page: PaymentWebviewRoute.page),
        AutoRoute(page: ReservationSuccessRoute.page),

        // SHARED ROUTES
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: PaymentWebviewWalletRoute.page),
        AutoRoute(page: AddCarRoute.page),
        AutoRoute(page: AddCarSuccessRoute.page),
        AutoRoute(page: AddCardRoute.page),
        AutoRoute(page: ReceiptRoute.page),

        // HOME ROUTES
        AutoRoute(page: CarWashListRoute.page),
        AutoRoute(page: PopularListRoute.page),
        AutoRoute(page: CarWashListByCategoryRoute.page),
        AutoRoute(page: PromosListRoute.page),
        AutoRoute(page: CategoryRoute.page),
        AutoRoute(page: SearchFilterRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: SearchResultsRoute.page),
        AutoRoute(page: NotificationsRoute.page),

        // PROFILE ROUTES
        AutoRoute(page: ReservationsHistoryRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: MyCarsRoute.page),
        AutoRoute(page: WalletRoute.page),
        AutoRoute(page: DepositWalletRoute.page),
        AutoRoute(page: DepositSuccessRoute.page),
        AutoRoute(page: ChangePasswordRoute.page),
        AutoRoute(page: SupportRoute.page),
        AutoRoute(page: PrivacyPolicyRoute.page),
        AutoRoute(page: CancelBookingRoute.page),

        // MAIN NAVBAR
        AutoRoute(
          path: '/main',
          initial: true,
          guards: [
            WelcomeGuard(),
            PermissionsGuard(),
          ],
          page: NavbarRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'map', page: MapRoute.page),
            AutoRoute(path: 'bookmarks', page: BookmarksRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
          ],
        ),
      ];
}

/// Auth guard (for pages that is not accessible without auth/token)
class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isLoggedIn = await locator<KeyValueStorageService>().getAccessToken() != null;

    final cannotNavigate = [
      BookmarksRoute.name,
      ProfileRoute.name,
      NotificationsRoute.name,
      MyCarsRoute.name,
      WalletRoute.name,
      DepositWalletRoute.name,
      DepositSuccessRoute.name,
      ChangePasswordRoute.name,
      CancelBookingRoute.name,
      SelectCleaningOptionsRoute.name,
      SelectCarRoute.name,
      PreviewRoute.name,
      PaymentWebviewRoute.name,
      ReservationSuccessRoute.name,
      PaymentRoute.name,
      PaymentWebviewWalletRoute.name,
      AddCarRoute.name,
      AddCarSuccessRoute.name,
      AddCardRoute.name,
      ReceiptRoute.name,
      ReservationsHistoryRoute.name,
      EditProfileRoute.name,
    ].contains(resolver.route.name);

    if (!isLoggedIn && cannotNavigate) {
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).clearSnackBars();
      ScaffoldMessenger.of(router.navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          content: const Text('Для доступа необходимо авторизоваться'),
          action: SnackBarAction(
            label: 'Войти',
            onPressed: () {
              resolver.redirect(SignInRoute());
            },
          ),
        ),
      );
      return;
    }

    resolver.next(true);
  }
}

/// welcome, onboarding guard (will be shown only on a first run of app)
class WelcomeGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isFirstRun = locator<KeyValueStorageService>().isFirstRun();

    if (isFirstRun) {
      resolver.next(false);
      resolver.redirect(const WelcomeRoute(), replace: true);

      locator<KeyValueStorageService>().setFirstRunComplete();
      return;
    }

    resolver.next(true);
  }
}

/// notification permission guard (only appears on first run)
class PermissionsGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final storage = locator<KeyValueStorageService>();
    final doShowPermissionRequests = storage.getShowPermissionRequests() ?? true;

    if (doShowPermissionRequests) {
      if (await Permission.notification.status == PermissionStatus.denied) {
        resolver.next(false);
        resolver.redirect(const NotificationAccessRoute());
        await storage.setShowPermissionRequests(false);
        return;
      }
    }

    resolver.next(true);
    return;
  }
}
