import 'dart:io';

import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class ReservationSuccessScreen extends StatefulWidget {
  const ReservationSuccessScreen({super.key, required this.reservation});

  final Reservation reservation;

  @override
  State<ReservationSuccessScreen> createState() => _ReservationSuccessScreenState();
}

class _ReservationSuccessScreenState extends State<ReservationSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: ''),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          120.h.heightBox,
          Assets.images.check.svg(height: 126.h, width: 126.w),
          12.h.heightBox,
          Text(
            'Поздравляем',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 22.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          16.h.heightBox,
          Text(
            'Вы забронировали услугу мойки автомобиля. Вы можете проверить свой заказ в профиле',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 22 / 14,
            ),
          ).paddingDefault,
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(
          24.w,
          12.h,
          24.w,
          (Platform.isIOS ? 0 : 12.h) + context.mqPadding.bottom + context.mqViewInsets.bottom,
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.w,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Colors.black.withOpacity(0.10000000149011612),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
          ),
          shadows: [
            BoxShadow(
              color: AppColors.color19000000,
              blurRadius: 26.r,
              offset: Offset(30.w, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton_(
              onPressed: () {
                context.replaceRoute(ReceiptRoute(reservation: widget.reservation));
              },
              text: 'Посмотреть квитанцию',
            ),
            14.h.heightBox,
            TextButton_(
              onPressed: () async {
                await context.router.replaceAll([ProfileRoute()]);
                if (context.mounted) context.router.push(ReservationsHistoryRoute());
              },
              text: 'Посмотреть историю заказов',
              backgroundColor: Colors.transparent,
              textStyle: TextStyle(
                color: AppColors.colorFF6D48FF,
                fontSize: 16.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w500,
                decorationColor: AppColors.colorFF6D48FF,
              ).withHeight(16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
