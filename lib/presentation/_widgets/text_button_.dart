import 'package:autobir/presentation/_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class TextButton_ extends StatelessWidget {
  const TextButton_({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    this.textStyle,
    this.padding,
    this.onPressed,
    this.isLoading = false,
    this.loadingSize,
  });

  final Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? color;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;
  final double? loadingSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        backgroundColor: backgroundColor ?? AppColors.colorFF6D48FF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
      child: isLoading
          ? SizedBox(
              height: loadingSize ?? 24.sp,
              width: loadingSize ?? 24.sp,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle ??
                  TextStyle(
                    color: color ?? Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ).withHeight(24.sp),
            ),
    );
  }
}
