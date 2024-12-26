import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class TitleValueTileWidget extends StatelessWidget {
  const TitleValueTileWidget({
    super.key,
    required this.title,
    required this.value,
    this.titleStyle,
    this.canCopy = false,
  });

  final String title;
  final String value;
  final TextStyle? titleStyle;
  final bool canCopy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleStyle ??
              TextStyle(
                color: AppColors.colorFF797979,
                fontSize: 14.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w500,
              ).withHeight(14.sp),
        ).expanded(),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(4.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                value,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 14.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                ).withHeight(14.sp),
              ),
              if (canCopy) ...[
                8.w.widthBox,
                Assets.images.receipt.copy.svg(width: 16.w, height: 16.h),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
