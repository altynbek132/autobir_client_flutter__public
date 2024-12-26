import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonOval_ extends StatelessWidget {
  const IconButtonOval_({
    super.key,
    required this.svg,
    this.onTap,
  });

  final Function()? onTap;
  final SvgPicture svg;

  @override
  Widget build(BuildContext context) {
    return ClipMaterialInk(
      oval: true,
      child: InkWell(
        onTap: onTap ?? () {},
        child: Ink(
          width: 40.r,
          height: 40.r,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.10000000149011612),
              ),
            ),
          ),
          child: Center(
            child: svg,
          ),
        ),
      ),
    );
  }
}
