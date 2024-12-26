import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> inputWithLabel(
  String label,
  String hintText, {
  bool obscureText = false,
  Widget? suffixIcon,
}) {
  return [
    Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.colorFF242424,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 1,
      ),
    ).paddingDefault.alignAtCenterLeft(),
    8.h.heightBox,
    TextField(
      obscureText: obscureText,
      obscuringCharacter: '*',
      style: TextStyle(
        color: AppColors.colorFF242424,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 1,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.colorFF797979,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        filled: true,
        fillColor: AppColors.colorFFF6F6F6,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
    ).paddingDefault,
  ];
}
