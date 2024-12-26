import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterChip_ extends StatelessWidget {
  const FilterChip_({
    super.key,
    this.selected = false,
    required this.label,
    required this.onSelected, // Add onSelected callback
  });

  final bool selected;
  final String label;
  final void Function(bool) onSelected; // Callback definition

  @override
  Widget build(BuildContext context) {
    return ClipMaterialInk(
      borderRadius: BorderRadius.circular(999),
      child: InkWell(
        onTap: () {
          onSelected(!selected); // Call the callback with the new state
        },
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: ShapeDecoration(
            color: selected ? AppColors.colorFF6D48FF : AppColors.colorFFF6F6F6,
            shape: const StadiumBorder(),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: selected ? Colors.white : AppColors.colorFF797979,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
