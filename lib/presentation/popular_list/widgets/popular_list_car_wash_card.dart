import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_widgets/bookmark_toggle_button.dart';
import 'package:autobir/presentation/_widgets/distance_and_location_chip.dart';
import 'package:autobir/presentation/search/utils/recent_items_extension.dart';
import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';

class PopularListCarWashCard extends StatelessWidget {
  const PopularListCarWashCard({
    super.key,
    this.canTap = true,
    required this.carWash,
  });

  final bool canTap;
  final CarWash carWash;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: canTap
              ? () {
                  locator<KeyValueStorageService>().addRecentlyViewedCarWash(carWash);
                  context.pushRoute(
                    CarWashRoute(
                      carWash: carWash,
                    ),
                  );
                }
              : null,
          child: Ink(
            height: 133.h,
            width: 213.w,
            decoration: ShapeDecoration(
              image: carWash.photoUrl != null
                  ? DecorationImage(
                      image: NetworkImage(carWash.photoUrl!),
                      fit: BoxFit.cover,
                    )
                  : null,
              color: Colors.black.withOpacity(0.15000000596046448),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: carWash.overallRating != null ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
              children: [
                if (carWash.overallRating != null) ratingChip(),
                BookmarkToggleButton(
                  carWash: carWash,
                  iconSize: 16,
                ),
              ],
            ).paddingSymmetric(horizontal: 12.w, vertical: 12.h),
          ),
        ),
        8.h.heightBox,
        Text(
          carWash.name,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
        6.h.heightBox,
        DistanceAndLocationChip(carWash: carWash),
      ],
    );
  }

  Container ratingChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.home.star.svg(),
          3.w.widthBox,
          Text(
            carWash.overallRating.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ).paddingOnly(top: 3.h),
        ],
      ),
    );
  }
}
