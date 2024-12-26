import 'dart:ui';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/DI/dependency_injection.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/auth_store.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:autobir/gen/fonts.gen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platform_info/platform_info.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:utils/utils_dart.dart';
import 'firebase_options.dart';

Future<void> main() async {
  configMobx();

  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await setupLocator();
  initLateFields([locator<AuthStore>()]);

  await logFcmToken();

  // clear storage on first run (some data is persisted even after uninstalling app)
  if (locator<KeyValueStorageService>().isFirstRun()) {
    await locator<KeyValueStorageService>().resetKeys();
  }

  runApp(const MyApp());

  FlutterNativeSplash.remove();
}

Future<void> logFcmToken() async {
  try {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    debugPrint("FCM TOKEN:${fcmToken}");
    if (fcmToken != null) {
      locator<ApiService>().storeFcm(
        FcmStoreRequest(
          token: fcmToken,
        ),
      );
    }
  } catch (_) {
    debugPrint("Failed to store FCM token");
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: !kReleaseMode && !Platform.I.isMobile,
      builder: (context) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          child: MaterialApp.router(
            routerConfig: _appRouter.config(),
            title: 'Flutter Demo',
            scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: PointerDeviceKind.values.toSet()),
            theme: ThemeData(
              fontFamily: FontFamily.muller,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),

            // device preview
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          ),
        );
      },
    );
  }
}
