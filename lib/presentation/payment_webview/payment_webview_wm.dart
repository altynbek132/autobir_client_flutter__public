import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'payment_webview.dart';

part 'payment_webview_wm.g.dart';

class PaymentWebviewWm = _PaymentWebviewWmBase with _$PaymentWebviewWm;

abstract class _PaymentWebviewWmBase extends MobxWM<PaymentWebviewScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    paymentUrl = widget.paymentUrl;
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          // onPageStarted: (String url) {},
          // onPageFinished: (String url) {},
          // onHttpError: (HttpResponseError error) {},
          // onWebResourceError: (WebResourceError error) {},
          // onNavigationRequest: (NavigationRequest request) {
          //   if (request.url.startsWith('https://www.youtube.com/')) {
          //     return NavigationDecision.prevent;
          //   }
          //   return NavigationDecision.navigate;
          // },
        ),
      )
      ..loadRequest(
        Uri.parse(paymentUrl),
      );
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  late final String paymentUrl;

  late final WebViewController controller;

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  // COMPUTED -----------------------------------------------------------------

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  // UI -----------------------------------------------------------------------

  // UTIL METHODS -------------------------------------------------------------

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => '',
      ],
      logger,
    );
  }
}

Future<void> disposePaymentWebviewWm(PaymentWebviewWm instance) async => instance.dispose();
