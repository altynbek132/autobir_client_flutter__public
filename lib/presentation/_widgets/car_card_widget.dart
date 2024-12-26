import 'package:api_client/api_client.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_radio_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/text_style_height_extension.dart';

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({
    super.key,
    required this.isSelectable,
    required this.car,
    required this.isSelected,
  });

  final Car car;
  final bool isSelectable;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.50.w,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.color11000000,
            blurRadius: 194.r,
            offset: Offset(0, 11.h),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Assets.images.car.svg(
            width: 28.w,
            height: 58.h,
          ),
          14.w.widthBox,
          Container(
            height: 60.h,
            width: 1.w,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
          24.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${car.make} ${car.model}',
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ).withHeight(16.sp),
              ),
              6.heightBox,
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    carTypeMap[car.carTypeId]?.name ?? '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF797979,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ).withHeight(14.sp),
                  ),
                  8.w.widthBox,
                  Container(
                    width: 4.50.w,
                    height: 4.50.h,
                    decoration: const ShapeDecoration(
                      color: AppColors.colorFF797979,
                      shape: OvalBorder(),
                    ),
                  ),
                  8.w.widthBox,
                  Text(
                    car.licensePlate ?? '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF797979,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ).withHeight(14.sp),
                  ),
                ],
              ),
            ],
          ).expanded(),
          if (isSelectable)
            IgnorePointer(
              child: CustomRadio(
                outerRadius: 10.w,
                innerRadius: 5.w,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                fillColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColors.colorFF6D48FF;
                    }
                    return AppColors.colorFFD1D1D6;
                  },
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: isSelected,
                groupValue: true,
                onChanged: (_) {},
              ),
            ),
        ],
      ),
    );
  }
}
