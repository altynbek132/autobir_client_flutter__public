import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/create_reservation_store.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'payment_webview_wm.dart';

@RoutePage()
class PaymentWebviewScreen extends ElementaryWidget<PaymentWebviewWm> with LoggerMixin {
  PaymentWebviewScreen({
    super.key,
    required this.paymentUrl,
    required this.reservation,
  }) : super((context) => PaymentWebviewWm());

  final String paymentUrl;
  final Reservation reservation;

  @override
  Widget build(wm, context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Оплата',
        actions: [
          TextButton_(
            text: 'Пропустить',
            onPressed: () async {
              /// navigate to home screen
              if (context.mounted) {
                await context.router.replaceAll([
                  const HomeRoute(),
                  ReservationSuccessRoute(reservation: reservation),
                ]);
              }

              // reset CreateReservationStore
              locator<CreateReservationStore>().reset();
            },
          ).paddingOnly(right: 8.w),
        ],
      ),
      backgroundColor: Colors.white,
      body: WebViewWidget(controller: wm.controller),
    );
  }
}
