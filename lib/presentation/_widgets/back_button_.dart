import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/bookmarks/icon_button_oval_.dart';
import 'package:flutter/material.dart';

class BackButton_ extends StatelessWidget {
  const BackButton_({super.key, this.onBackPressed});

  final Function()? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return IconButtonOval_(
      onTap: onBackPressed ??
          () {
            context.maybePop();
          },
      svg: Assets.images.bookmarks.arrowLeftBack.svg(),
    );
  }
}
