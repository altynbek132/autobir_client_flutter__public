import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    this.svg,
    required this.text,
    this.onTap,
  });

  final SvgPicture? svg;
  final Widget text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // todo: check vertical padding
      constraints: BoxConstraints(minHeight: (24 + 16 * 2).h),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Ink(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              svg ?? const SizedBox.shrink(),
              12.w.widthBox,
              text.expanded(),
              Assets.images.arrowRight.svg(
                width: 21.w,
                height: 21.h,
              ),
            ],
          ).paddingDefault,
        ),
      ),
    );
  }
}

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      color: Colors.black.withOpacity(0.10000000149011612),
    );
  }
}
