import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/bookmark_toggle_button.dart';
import 'package:autobir/presentation/search/utils/recent_items_extension.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/distance_and_location_chip.dart';

class CarWashCard extends StatelessWidget {
  const CarWashCard({
    super.key,
    this.canTap = true,
    this.carWash,
  });

  final bool canTap;
  final CarWash? carWash;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: canTap && carWash != null
          ? () {
              locator<KeyValueStorageService>().addRecentlyViewedCarWash(carWash!);
              context.pushRoute(
                CarWashRoute(carWash: carWash!),
              );
            }
          : null,
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.50.w,
              color: Colors.black.withOpacity(0.10000000149011612),
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          shadows: const [
            BoxShadow(
              color: AppColors.color11000000,
              blurRadius: 194,
              offset: Offset(0, 11),
              spreadRadius: 0,
            ),
          ],
        ),
        child: CarWashCardContent(
          carWash: carWash,
        ).paddingAll(10.r),
      ),
    );
  }
}

class CarWashCardContent extends StatelessWidget {
  const CarWashCardContent({
    super.key,
    this.showButton = true,
    this.carWash,
  });

  final bool showButton;
  final CarWash? carWash;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // IMAGE AND RATING
        Stack(
          children: [
            Container(
              width: 110.w,
              height: 115.h,
              decoration: ShapeDecoration(
                image: carWash?.photoUrl == null
                    ? null
                    : DecorationImage(
                        image: NetworkImage(carWash!.photoUrl!),
                        fit: BoxFit.cover,
                      ),
                color: const Color.fromARGB(255, 123, 125, 240),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
            ),
            if (carWash?.overallRating != null)
              Positioned(
                top: 4.r,
                left: 4.r,
                child: ratingChip(),
              ),
          ],
        ),
        12.w.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: ShapeDecoration(
                    color: AppColors.colorFFF6F6F6,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  child: Text(
                    'Автомойка',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF6D48FF,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ).paddingOnly(top: 10.h),
                const SizedBox.shrink().expanded(),
                if (showButton && carWash != null)
                  BookmarkToggleButton(
                    carWash: carWash!,
                  ),
              ],
            ),
            10.h.heightBox,
            Text(
              carWash?.name ?? '-',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            34.h.heightBox,
            DistanceAndLocationChip(carWash: carWash),
          ],
        ).expanded(),
      ],
    );
  }

  Container ratingChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.home.star.svg(),
          4.w.widthBox,
          Text(
            carWash?.overallRating?.toString() ?? '-',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ).paddingOnly(top: 3.h),
        ],
      ),
    );
  }
}
