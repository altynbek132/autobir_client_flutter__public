import 'package:autobir/constants.dart';
import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackBar(BuildContext context, Exception e) {
  return showSnackbar(context, kIsDev ? e.toString() : 'Ошибка');
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(BuildContext context, String message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ),
  );
}
