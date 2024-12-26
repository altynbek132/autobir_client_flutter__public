import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({super.key});

  @override
  State<LocationAccessScreen> createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          (213 + context.mediaQueryViewPadding.top).h.heightBox,
          Container(
            width: 118.r,
            height: 118.r,
            padding: EdgeInsets.all(31.r),
            decoration: ShapeDecoration(
              color: AppColors.colorFFF6F6F6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(148.r),
              ),
            ),
            child: Assets.images.location.svg(
              width: 56.r,
              height: 56.r,
            ),
          ).alignAtCenter(),
          32.h.heightBox,
          Text(
            'Где Вы находитесь?',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ).alignAtCenter(),
          16.h.heightBox,
          Text(
            'Используется для отслеживания расстояния до автомоек в режиме реального времени',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ).alignAtCenter().paddingDefault,
          48.h.heightBox,
          TextButton_(
            onPressed: () async {
              await Permission.location.request();
              if (context.mounted) context.router.replaceAll([const HomeRoute()]);
            },
            text: 'Продолжить',
          ).paddingDefault,
        ],
      ),
    );
  }
}
