import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:autobir/presentation/_utils/shape_decoration_zero_padding.dart';
import 'package:flutter/material.dart';

import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class DateTabBar_ extends StatefulWidget {
  const DateTabBar_({
    super.key,
    required this.changeSelectedDate,
    required this.initialTab,
  });

  final int initialTab;
  final Function(DateTime date) changeSelectedDate;

  @override
  State<DateTabBar_> createState() => _DateTabBar_State();
}

class _DateTabBar_State extends State<DateTabBar_> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.initialTab;
    super.initState();
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        decoration: ShapeDecorationZeroPadding(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.w, color: AppColors.colorFF797979),
            borderRadius: borderRadius,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DateTab_(
              onTap: () {
                _onTabSelected(0);
                widget.changeSelectedDate(DateTime.now());
              },
              title: 'Сегодня',
              subtitle: dayAndFullMonth(DateTime.now()),
              isSelected: _selectedIndex == 0,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Builder(
                  builder: (context) {
                    final tab_ = DateTab_(
                      onTap: () {
                        _onTabSelected(1);
                        widget.changeSelectedDate(DateTime.now().add(const Duration(days: 1)));
                      },
                      title: 'Завтра',
                      subtitle: dayAndFullMonth(DateTime.now().add(const Duration(days: 1))),
                      isSelected: _selectedIndex == 1,
                    );
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InvisibilityKeepSize(
                          child: tab_,
                        ),
                        Positioned.fill(
                          right: -1,
                          left: -1,
                          child: tab_,
                        ),
                      ],
                    );
                  },
                ),
                Positioned(
                  left: -1,
                  top: 0,
                  bottom: 0,
                  child: VerticalDivider(
                    color: AppColors.colorFF797979,
                    thickness: 1,
                    width: 1,
                    indent: 10.h,
                    endIndent: 10.h,
                  ),
                ),
                Positioned(
                  right: -1,
                  top: 0,
                  bottom: 0,
                  child: VerticalDivider(
                    color: AppColors.colorFF797979,
                    thickness: 1,
                    width: 1,
                    indent: 10.h,
                    endIndent: 10.h,
                  ),
                ),
              ],
            ),
            DateTab_(
              onTap: () {
                _onTabSelected(2);
                widget.changeSelectedDate(DateTime.now().add(const Duration(days: 2)));
              },
              title: 'Послезавтра',
              subtitle: dayAndFullMonth(DateTime.now().add(const Duration(days: 2))),
              isSelected: _selectedIndex == 2,
            ),
          ],
        ),
      ),
    );
  }
}

final borderRadius = BorderRadius.circular(10.r);

class DateTab_ extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const DateTab_({
    super.key,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipMaterialInk(
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
          decoration: ShapeDecorationZeroPadding(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: isSelected ? AppColors.colorFF6D48FF : Colors.transparent),
              borderRadius: borderRadius,
            ),
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: (26 + 60).h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: isSelected ? AppColors.colorFF6D48FF : AppColors.colorFF242424,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
