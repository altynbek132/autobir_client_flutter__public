import 'package:autobir/presentation/_styles/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.toggleCheckbox,
  });

  final bool isChecked;

  final Function() toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      side: BorderSide(
        color: AppColors.colorFFD1D1D6,
        width: 1.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
      ),
      onChanged: (_) => toggleCheckbox(),
      checkColor: Colors.white,
      activeColor: AppColors.colorFF6D48FF,
    );
  }
}
