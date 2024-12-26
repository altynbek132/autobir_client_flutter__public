import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/bookmarks/icon_button_oval_.dart';
import 'package:flutter/material.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.isLeading = true,
    this.actions,
  });

  final String? title;
  final bool isLeading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      leadingWidth: 64.w,
      toolbarHeight: 72.h,
      leading: isLeading
          ? IconButtonOval_(
              onTap: () {
                context.maybePop();
              },
              svg: Assets.images.backButton.svg(),
            ).paddingLTRB(24.w, 16.h, 0, 16.h)
          : null,
      actions: actions,
      centerTitle: true,
      title: title == null
          ? null
          : Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 72.h);
}
