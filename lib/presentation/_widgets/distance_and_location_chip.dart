import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_stores/calculate_distance_store.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DistanceAndLocationChip extends StatelessWidget {
  const DistanceAndLocationChip({
    super.key,
    required this.carWash,
  });

  final CarWash? carWash;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.home.locationPopularSmall.svg(),
                4.w.widthBox,
                Text(
                  (() {
                    final double? distanceInKm =
                        locator<CalculateDistanceStore>().distanceToDevice(carWash?.latitude, carWash?.longitude);
                    if (distanceInKm != null) {
                      if (distanceInKm < 1) {
                        return '<1 км';
                      } else {
                        return '${distanceInKm.toStringAsFixed(0)} км';
                      }
                    } else {
                      return '- км';
                    }
                  })(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
              ],
            ),
            17.w.widthBox,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.home.clock.svg(),
                4.w.widthBox,
                Text(
                  (() {
                    final double? timeInMinutes =
                        locator<CalculateDistanceStore>().timeToDevice(carWash?.latitude, carWash?.longitude);
                    if (timeInMinutes != null) {
                      if (timeInMinutes < 1) {
                        return '<1 мин';
                      } else {
                        return '${timeInMinutes.toStringAsFixed(0)} мин';
                      }
                    } else {
                      return '- мин';
                    }
                  })(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
