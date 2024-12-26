import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_radio_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/list_utils.dart';

class RatingListItem extends StatelessWidget {
  const RatingListItem({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          ...List<Widget>.generate(5, (index) => Assets.images.filter.star.svg()).separated(3.75.w.widthBox),
          12.w.widthBox,
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          const SizedBox.shrink().expanded(),
          CustomRadio(
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
                return AppColors.colorFF797979;
              },
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: isSelected,
            groupValue: true,
            onChanged: (_) {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
