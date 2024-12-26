import 'dart:io';

import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
    required this.size,
    required this.imageUrl,
    this.onTapEdit,
    this.pickedImage,
  });
  final double size;
  final VoidCallback? onTapEdit;
  final File? pickedImage;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: (() {
            if (pickedImage != null) {
              return Image.file(
                pickedImage!,
                width: size.w,
                height: size.h,
                fit: BoxFit.cover,
              );
            }
            if (imageUrl == null) {
              return Container(
                width: size.w,
                height: size.h,
                color: Colors.grey,
              );
            }
            return Image.network(
              imageUrl!,
              width: size.w,
              height: size.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: const BoxDecoration(
                    color: AppColors.colorFF6D48FF,
                    shape: BoxShape.circle,
                  ),
                );
              },
            );
          })(),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: ClipMaterialInk(
              oval: true,
              child: InkWell(
                onTap: onTapEdit,
                child: Ink(
                  width: 36.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.colorFF6D48FF,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Assets.images.profile.edit.svg(
                      width: 18.w,
                      height: 18.h,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
