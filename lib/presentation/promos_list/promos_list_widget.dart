import 'dart:math';

import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'promos_list_widget_wm.dart';

class PromosListWidget extends ElementaryWidget<PromosListWidgetWm> with LoggerMixin {
  PromosListWidget({super.key}) : super((context) => PromosListWidgetWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        final promoCards = [
          // max 4 promos shown
          for (int i = 0; i < min(4, wm.length); i++)
            PromoCardWidget(carWash: wm.promoCarWashes[i]).paddingSymmetric(horizontal: 6.w),
        ];
        return Column(
          children: [
            SizedBox(
              height: 158.h,
              child: PageView(
                controller: wm.controller,
                scrollDirection: Axis.horizontal,
                children: [
                  // SUCCESS
                  if (wm.state == PromosListWidgetState.success) ...promoCards,

                  // LOADING (for shimmer effect)
                  if (wm.state == PromosListWidgetState.loading)
                    for (int i = 0; i < 2; i++)
                      Container(
                        height: 158.h,
                        width: 302.w,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                      ).applyShimmer().paddingSymmetric(horizontal: 6.w),
                ],
              ),
            ),
            12.h.heightBox,
            SmoothPageIndicator(
              controller: wm.controller,
              count: wm.state == PromosListWidgetState.loading ? 4 : promoCards.length,
              effect: WormEffect(
                dotHeight: 10.r,
                dotWidth: 10.r,
                spacing: 8.r,
                activeDotColor: AppColors.colorFF6D48FF,
                dotColor: AppColors.colorFFE4E4E4,
              ),
            ).applyShimmer(enable: wm.state == PromosListWidgetState.loading),
          ],
        );
      },
    );
  }
}

class PromoCardWidget extends StatelessWidget {
  const PromoCardWidget({
    super.key,
    required this.carWash,
  });

  final CarWash carWash;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.pushRoute(
          CarWashRoute(carWash: carWash),
        );
      },
      child: Ink(
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-0.98, 0.20),
            end: const Alignment(0.98, -0.2),
            colors: [Colors.black, Colors.black.withOpacity(0)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          image: DecorationImage(
            image: Assets.images.home.special.image().image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            12.h.heightBox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                'Время ограничено!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ).paddingSymmetric(horizontal: 12.w),
            16.h.heightBox,
            Text(
              'Denver - wash',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ).paddingSymmetric(horizontal: 12.w),
            8.h.heightBox,
            vplotDo().paddingSymmetric(horizontal: 12.w),
            15.h.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Все виды услуг по мойке | Соблюдаются все условия',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ).paddingOnly(bottom: 4.h).expanded(),
                10.w.widthBox,
                SizedBox(
                  height: 24.h,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      ),
                      backgroundColor: WidgetStateProperty.all(AppColors.colorFFFF5500),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(140)),
                      ),
                      minimumSize: WidgetStateProperty.all(Size.zero),
                    ),
                    child: Text(
                      'Больше',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ).paddingOnly(left: 12.w, right: 8.w),
            12.h.heightBox,
          ],
        ),
      ),
    );
  }

  Row vplotDo() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Вплоть до',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
        4.w.widthBox,
        Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              '40',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12.29.w,
                height: 11.93.h,
                padding: EdgeInsets.symmetric(horizontal: 3.15.w, vertical: 1.97.h),
                decoration: ShapeDecoration(
                  color: AppColors.colorFF6D48FF,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.66),
                  ),
                ),
                child: Text(
                  '%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 6.68.sp,
                    fontWeight: FontWeight.w800,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
