import 'dart:io';

import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinnedBottomButton extends StatelessWidget {
  const PinnedBottomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  final Function()? onPressed;
  final bool isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        24.w,
        12.h,
        24.w,
        (Platform.isIOS ? 0 : 12.h) + context.mqPadding.bottom + context.mqViewInsets.bottom,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Colors.black.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.color19000000,
            blurRadius: 26.r,
            offset: Offset(30.w, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextButton_(
        onPressed: onPressed,
        text: text,
        isLoading: isLoading,
      ),
    );
  }
}
