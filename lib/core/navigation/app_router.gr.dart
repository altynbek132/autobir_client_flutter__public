// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddCarScreen]
class AddCarRoute extends PageRouteInfo<AddCarRouteArgs> {
  AddCarRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddCarRoute.name,
          args: AddCarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddCarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AddCarRouteArgs>(orElse: () => const AddCarRouteArgs());
      return AddCarScreen(key: args.key);
    },
  );
}

class AddCarRouteArgs {
  const AddCarRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddCarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AddCarSuccessScreen]
class AddCarSuccessRoute extends PageRouteInfo<AddCarSuccessRouteArgs> {
  AddCarSuccessRoute({
    Key? key,
    required Car car,
    List<PageRouteInfo>? children,
  }) : super(
          AddCarSuccessRoute.name,
          args: AddCarSuccessRouteArgs(
            key: key,
            car: car,
          ),
          initialChildren: children,
        );

  static const String name = 'AddCarSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddCarSuccessRouteArgs>();
      return AddCarSuccessScreen(
        key: args.key,
        car: args.car,
      );
    },
  );
}

class AddCarSuccessRouteArgs {
  const AddCarSuccessRouteArgs({
    this.key,
    required this.car,
  });

  final Key? key;

  final Car car;

  @override
  String toString() {
    return 'AddCarSuccessRouteArgs{key: $key, car: $car}';
  }
}

/// generated route for
/// [AddCardScreen]
class AddCardRoute extends PageRouteInfo<void> {
  const AddCardRoute({List<PageRouteInfo>? children})
      : super(
          AddCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddCardScreen();
    },
  );
}

/// generated route for
/// [BookmarksScreen]
class BookmarksRoute extends PageRouteInfo<BookmarksRouteArgs> {
  BookmarksRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BookmarksRoute.name,
          args: BookmarksRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookmarksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookmarksRouteArgs>(
          orElse: () => const BookmarksRouteArgs());
      return BookmarksScreen(key: args.key);
    },
  );
}

class BookmarksRouteArgs {
  const BookmarksRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BookmarksRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CancelBookingScreen]
class CancelBookingRoute extends PageRouteInfo<CancelBookingRouteArgs> {
  CancelBookingRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CancelBookingRoute.name,
          args: CancelBookingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CancelBookingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CancelBookingRouteArgs>(
          orElse: () => const CancelBookingRouteArgs());
      return CancelBookingScreen(key: args.key);
    },
  );
}

class CancelBookingRouteArgs {
  const CancelBookingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CancelBookingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CarWashListByCategoryScreen]
class CarWashListByCategoryRoute
    extends PageRouteInfo<CarWashListByCategoryRouteArgs> {
  CarWashListByCategoryRoute({
    Key? key,
    required String categoryString,
    List<PageRouteInfo>? children,
  }) : super(
          CarWashListByCategoryRoute.name,
          args: CarWashListByCategoryRouteArgs(
            key: key,
            categoryString: categoryString,
          ),
          initialChildren: children,
        );

  static const String name = 'CarWashListByCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarWashListByCategoryRouteArgs>();
      return CarWashListByCategoryScreen(
        key: args.key,
        categoryString: args.categoryString,
      );
    },
  );
}

class CarWashListByCategoryRouteArgs {
  const CarWashListByCategoryRouteArgs({
    this.key,
    required this.categoryString,
  });

  final Key? key;

  final String categoryString;

  @override
  String toString() {
    return 'CarWashListByCategoryRouteArgs{key: $key, categoryString: $categoryString}';
  }
}

/// generated route for
/// [CarWashListScreen]
class CarWashListRoute extends PageRouteInfo<CarWashListRouteArgs> {
  CarWashListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CarWashListRoute.name,
          args: CarWashListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CarWashListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarWashListRouteArgs>(
          orElse: () => const CarWashListRouteArgs());
      return CarWashListScreen(key: args.key);
    },
  );
}

class CarWashListRouteArgs {
  const CarWashListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CarWashListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CarWashScreen]
class CarWashRoute extends PageRouteInfo<CarWashRouteArgs> {
  CarWashRoute({
    Key? key,
    required CarWash carWash,
    List<PageRouteInfo>? children,
  }) : super(
          CarWashRoute.name,
          args: CarWashRouteArgs(
            key: key,
            carWash: carWash,
          ),
          initialChildren: children,
        );

  static const String name = 'CarWashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CarWashRouteArgs>();
      return CarWashScreen(
        key: args.key,
        carWash: args.carWash,
      );
    },
  );
}

class CarWashRouteArgs {
  const CarWashRouteArgs({
    this.key,
    required this.carWash,
  });

  final Key? key;

  final CarWash carWash;

  @override
  String toString() {
    return 'CarWashRouteArgs{key: $key, carWash: $carWash}';
  }
}

/// generated route for
/// [CategoryScreen]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoryScreen();
    },
  );
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePasswordRouteArgs>(
          orElse: () => const ChangePasswordRouteArgs());
      return ChangePasswordScreen(key: args.key);
    },
  );
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CreateAccountScreen]
class CreateAccountRoute extends PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CreateAccountRoute.name,
          args: CreateAccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateAccountRouteArgs>(
          orElse: () => const CreateAccountRouteArgs());
      return CreateAccountScreen(key: args.key);
    },
  );
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DepositSuccessScreen]
class DepositSuccessRoute extends PageRouteInfo<void> {
  const DepositSuccessRoute({List<PageRouteInfo>? children})
      : super(
          DepositSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'DepositSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DepositSuccessScreen();
    },
  );
}

/// generated route for
/// [DepositWalletScreen]
class DepositWalletRoute extends PageRouteInfo<void> {
  const DepositWalletRoute({List<PageRouteInfo>? children})
      : super(
          DepositWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'DepositWalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DepositWalletScreen();
    },
  );
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProfileRouteArgs>();
      return EditProfileScreen(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LocationAccessScreen]
class LocationAccessRoute extends PageRouteInfo<void> {
  const LocationAccessRoute({List<PageRouteInfo>? children})
      : super(
          LocationAccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationAccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocationAccessScreen();
    },
  );
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<MapRouteArgs> {
  MapRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MapRoute.name,
          args: MapRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MapRouteArgs>(orElse: () => const MapRouteArgs());
      return MapScreen(key: args.key);
    },
  );
}

class MapRouteArgs {
  const MapRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MyCarsScreen]
class MyCarsRoute extends PageRouteInfo<MyCarsRouteArgs> {
  MyCarsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyCarsRoute.name,
          args: MyCarsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyCarsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MyCarsRouteArgs>(orElse: () => const MyCarsRouteArgs());
      return MyCarsScreen(key: args.key);
    },
  );
}

class MyCarsRouteArgs {
  const MyCarsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyCarsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NavbarScreen]
class NavbarRoute extends PageRouteInfo<void> {
  const NavbarRoute({List<PageRouteInfo>? children})
      : super(
          NavbarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavbarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavbarScreen();
    },
  );
}

/// generated route for
/// [NewPasswordScreen]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          NewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NewPasswordScreen();
    },
  );
}

/// generated route for
/// [NotificationAccessScreen]
class NotificationAccessRoute extends PageRouteInfo<void> {
  const NotificationAccessRoute({List<PageRouteInfo>? children})
      : super(
          NotificationAccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationAccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationAccessScreen();
    },
  );
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<NotificationsRouteArgs> {
  NotificationsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationsRoute.name,
          args: NotificationsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationsRouteArgs>(
          orElse: () => const NotificationsRouteArgs());
      return NotificationsScreen(key: args.key);
    },
  );
}

class NotificationsRouteArgs {
  const NotificationsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'NotificationsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    required PaymentScreenMode mode,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            mode: mode,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return PaymentScreen(
        key: args.key,
        mode: args.mode,
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.mode,
  });

  final Key? key;

  final PaymentScreenMode mode;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [PaymentWebviewScreen]
class PaymentWebviewRoute extends PageRouteInfo<PaymentWebviewRouteArgs> {
  PaymentWebviewRoute({
    Key? key,
    required String paymentUrl,
    required Reservation reservation,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentWebviewRoute.name,
          args: PaymentWebviewRouteArgs(
            key: key,
            paymentUrl: paymentUrl,
            reservation: reservation,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentWebviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentWebviewRouteArgs>();
      return PaymentWebviewScreen(
        key: args.key,
        paymentUrl: args.paymentUrl,
        reservation: args.reservation,
      );
    },
  );
}

class PaymentWebviewRouteArgs {
  const PaymentWebviewRouteArgs({
    this.key,
    required this.paymentUrl,
    required this.reservation,
  });

  final Key? key;

  final String paymentUrl;

  final Reservation reservation;

  @override
  String toString() {
    return 'PaymentWebviewRouteArgs{key: $key, paymentUrl: $paymentUrl, reservation: $reservation}';
  }
}

/// generated route for
/// [PaymentWebviewWalletScreen]
class PaymentWebviewWalletRoute
    extends PageRouteInfo<PaymentWebviewWalletRouteArgs> {
  PaymentWebviewWalletRoute({
    Key? key,
    required String paymentUrl,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentWebviewWalletRoute.name,
          args: PaymentWebviewWalletRouteArgs(
            key: key,
            paymentUrl: paymentUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentWebviewWalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentWebviewWalletRouteArgs>();
      return PaymentWebviewWalletScreen(
        key: args.key,
        paymentUrl: args.paymentUrl,
      );
    },
  );
}

class PaymentWebviewWalletRouteArgs {
  const PaymentWebviewWalletRouteArgs({
    this.key,
    required this.paymentUrl,
  });

  final Key? key;

  final String paymentUrl;

  @override
  String toString() {
    return 'PaymentWebviewWalletRouteArgs{key: $key, paymentUrl: $paymentUrl}';
  }
}

/// generated route for
/// [PopularListScreen]
class PopularListRoute extends PageRouteInfo<PopularListRouteArgs> {
  PopularListRoute({
    Key? key,
    int? perPage,
    List<PageRouteInfo>? children,
  }) : super(
          PopularListRoute.name,
          args: PopularListRouteArgs(
            key: key,
            perPage: perPage,
          ),
          initialChildren: children,
        );

  static const String name = 'PopularListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PopularListRouteArgs>(
          orElse: () => const PopularListRouteArgs());
      return PopularListScreen(
        key: args.key,
        perPage: args.perPage,
      );
    },
  );
}

class PopularListRouteArgs {
  const PopularListRouteArgs({
    this.key,
    this.perPage,
  });

  final Key? key;

  final int? perPage;

  @override
  String toString() {
    return 'PopularListRouteArgs{key: $key, perPage: $perPage}';
  }
}

/// generated route for
/// [PreviewScreen]
class PreviewRoute extends PageRouteInfo<PreviewRouteArgs> {
  PreviewRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PreviewRoute.name,
          args: PreviewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PreviewRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<PreviewRouteArgs>(orElse: () => const PreviewRouteArgs());
      return PreviewScreen(key: args.key);
    },
  );
}

class PreviewRouteArgs {
  const PreviewRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PreviewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PrivacyPolicyScreen]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PrivacyPolicyScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<ProfileRouteArgs>(orElse: () => const ProfileRouteArgs());
      return ProfileScreen(key: args.key);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PromosListScreen]
class PromosListRoute extends PageRouteInfo<PromosListRouteArgs> {
  PromosListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PromosListRoute.name,
          args: PromosListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PromosListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PromosListRouteArgs>(
          orElse: () => const PromosListRouteArgs());
      return PromosListScreen(key: args.key);
    },
  );
}

class PromosListRouteArgs {
  const PromosListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'PromosListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ReceiptScreen]
class ReceiptRoute extends PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({
    Key? key,
    required Reservation reservation,
    List<PageRouteInfo>? children,
  }) : super(
          ReceiptRoute.name,
          args: ReceiptRouteArgs(
            key: key,
            reservation: reservation,
          ),
          initialChildren: children,
        );

  static const String name = 'ReceiptRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReceiptRouteArgs>();
      return ReceiptScreen(
        key: args.key,
        reservation: args.reservation,
      );
    },
  );
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({
    this.key,
    required this.reservation,
  });

  final Key? key;

  final Reservation reservation;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, reservation: $reservation}';
  }
}

/// generated route for
/// [ReservationSuccessScreen]
class ReservationSuccessRoute
    extends PageRouteInfo<ReservationSuccessRouteArgs> {
  ReservationSuccessRoute({
    Key? key,
    required Reservation reservation,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationSuccessRoute.name,
          args: ReservationSuccessRouteArgs(
            key: key,
            reservation: reservation,
          ),
          initialChildren: children,
        );

  static const String name = 'ReservationSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReservationSuccessRouteArgs>();
      return ReservationSuccessScreen(
        key: args.key,
        reservation: args.reservation,
      );
    },
  );
}

class ReservationSuccessRouteArgs {
  const ReservationSuccessRouteArgs({
    this.key,
    required this.reservation,
  });

  final Key? key;

  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationSuccessRouteArgs{key: $key, reservation: $reservation}';
  }
}

/// generated route for
/// [ReservationsHistoryScreen]
class ReservationsHistoryRoute
    extends PageRouteInfo<ReservationsHistoryRouteArgs> {
  ReservationsHistoryRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationsHistoryRoute.name,
          args: ReservationsHistoryRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ReservationsHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReservationsHistoryRouteArgs>(
          orElse: () => const ReservationsHistoryRouteArgs());
      return ReservationsHistoryScreen(key: args.key);
    },
  );
}

class ReservationsHistoryRouteArgs {
  const ReservationsHistoryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ReservationsHistoryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SearchFilterScreen]
class SearchFilterRoute extends PageRouteInfo<SearchFilterRouteArgs> {
  SearchFilterRoute({
    Key? key,
    required SearchFilterStore searchFilterStore,
    List<PageRouteInfo>? children,
  }) : super(
          SearchFilterRoute.name,
          args: SearchFilterRouteArgs(
            key: key,
            searchFilterStore: searchFilterStore,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchFilterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchFilterRouteArgs>();
      return SearchFilterScreen(
        key: args.key,
        searchFilterStore: args.searchFilterStore,
      );
    },
  );
}

class SearchFilterRouteArgs {
  const SearchFilterRouteArgs({
    this.key,
    required this.searchFilterStore,
  });

  final Key? key;

  final SearchFilterStore searchFilterStore;

  @override
  String toString() {
    return 'SearchFilterRouteArgs{key: $key, searchFilterStore: $searchFilterStore}';
  }
}

/// generated route for
/// [SearchResultsScreen]
class SearchResultsRoute extends PageRouteInfo<SearchResultsRouteArgs> {
  SearchResultsRoute({
    Key? key,
    required SearchFilterStore searchFilterStore,
    List<PageRouteInfo>? children,
  }) : super(
          SearchResultsRoute.name,
          args: SearchResultsRouteArgs(
            key: key,
            searchFilterStore: searchFilterStore,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchResultsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchResultsRouteArgs>();
      return SearchResultsScreen(
        key: args.key,
        searchFilterStore: args.searchFilterStore,
      );
    },
  );
}

class SearchResultsRouteArgs {
  const SearchResultsRouteArgs({
    this.key,
    required this.searchFilterStore,
  });

  final Key? key;

  final SearchFilterStore searchFilterStore;

  @override
  String toString() {
    return 'SearchResultsRouteArgs{key: $key, searchFilterStore: $searchFilterStore}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    SearchFilterStore? searchFilterStore,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            searchFilterStore: searchFilterStore,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SearchRouteArgs>(orElse: () => const SearchRouteArgs());
      return SearchScreen(
        key: args.key,
        searchFilterStore: args.searchFilterStore,
      );
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.searchFilterStore,
  });

  final Key? key;

  final SearchFilterStore? searchFilterStore;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, searchFilterStore: $searchFilterStore}';
  }
}

/// generated route for
/// [SelectCarScreen]
class SelectCarRoute extends PageRouteInfo<SelectCarRouteArgs> {
  SelectCarRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SelectCarRoute.name,
          args: SelectCarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SelectCarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectCarRouteArgs>(
          orElse: () => const SelectCarRouteArgs());
      return SelectCarScreen(key: args.key);
    },
  );
}

class SelectCarRouteArgs {
  const SelectCarRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SelectCarRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SelectCleaningOptionsScreen]
class SelectCleaningOptionsRoute
    extends PageRouteInfo<SelectCleaningOptionsRouteArgs> {
  SelectCleaningOptionsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SelectCleaningOptionsRoute.name,
          args: SelectCleaningOptionsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SelectCleaningOptionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectCleaningOptionsRouteArgs>(
          orElse: () => const SelectCleaningOptionsRouteArgs());
      return SelectCleaningOptionsScreen(key: args.key);
    },
  );
}

class SelectCleaningOptionsRouteArgs {
  const SelectCleaningOptionsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SelectCleaningOptionsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignInRouteArgs>(orElse: () => const SignInRouteArgs());
      return SignInScreen(key: args.key);
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SupportScreen]
class SupportRoute extends PageRouteInfo<void> {
  const SupportRoute({List<PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SupportScreen();
    },
  );
}

/// generated route for
/// [VerificationCodeScreen]
class VerificationCodeRoute extends PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    Key? key,
    required String mobilePhone,
    required String password,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationCodeRoute.name,
          args: VerificationCodeRouteArgs(
            key: key,
            mobilePhone: mobilePhone,
            password: password,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationCodeRouteArgs>();
      return VerificationCodeScreen(
        key: args.key,
        mobilePhone: args.mobilePhone,
        password: args.password,
      );
    },
  );
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({
    this.key,
    required this.mobilePhone,
    required this.password,
  });

  final Key? key;

  final String mobilePhone;

  final String password;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, mobilePhone: $mobilePhone, password: $password}';
  }
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<WalletRouteArgs> {
  WalletRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          WalletRoute.name,
          args: WalletRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<WalletRouteArgs>(orElse: () => const WalletRouteArgs());
      return WalletScreen(key: args.key);
    },
  );
}

class WalletRouteArgs {
  const WalletRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'WalletRouteArgs{key: $key}';
  }
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomeScreen();
    },
  );
}
