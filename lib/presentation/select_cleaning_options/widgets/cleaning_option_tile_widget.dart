import 'package:api_client/api_client.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_radio_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Map<int, SvgPicture> _serviceIcons = {
  0: Assets.images.tireClean.svg(),
  1: Assets.images.carWash.svg(),
  2: Assets.images.vacuum.svg(),
  3: Assets.images.carWash.svg(), // иконку не смог выгрузить
  4: Assets.images.engine.svg(),
  5: Assets.images.polish.svg(),
};

class CleaningOptionTileWidget extends StatelessWidget {
  const CleaningOptionTileWidget({
    super.key,
    required this.cleaningOption,
    required this.isSelected,
  });

  final CleaningOption cleaningOption;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(vertical: 8.h),
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
          8.w.widthBox,
          Container(
            width: 48.w,
            height: 48.h,
            padding: EdgeInsets.all(12.w),
            decoration: const ShapeDecoration(
              color: AppColors.colorFFF6F6F6,
              shape: OvalBorder(),
            ),
            // FIXME: нужно показывать иконку по description
            child: _serviceIcons[cleaningOption.id % 6],
          ),
          10.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cleaningOption.name ?? '-',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 16.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              6.h.heightBox,
              Text(
                '${cleaningOption.price} тг',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 16.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ],
          ).expanded(),
          // todo: chagne design
          IgnorePointer(
            ignoring: true,
            child: CustomCheckbox(
              isChecked: isSelected,
              toggleCheckbox: () {},
            ).paddingOnly(right: 20.w),
          ),
        ],
      ),
    );
  }
}
