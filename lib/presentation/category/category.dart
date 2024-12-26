import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  final Widget svg;
  final String label;
  final EdgeInsets? padding;
  final Function()? onTap;

  const Category({
    super.key,
    required this.svg,
    required this.label,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: padding,
        child: Column(
          children: [
            Container(
              width: 63.w,
              height: 63.w,
              decoration: const ShapeDecoration(
                color: AppColors.colorFFF6F6F6,
                shape: OvalBorder(),
              ),
              child: Center(child: svg),
            ),
            6.h.heightBox,
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
