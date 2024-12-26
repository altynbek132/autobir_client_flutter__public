// ignore: unused_import
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/profile/widgets/profile_image_widget.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'edit_profile_wm.dart';

@RoutePage()
class EditProfileScreen extends ElementaryWidget<EditProfileWm> with LoggerMixin {
  EditProfileScreen({
    super.key,
    required this.user,
  }) : super((context) => EditProfileWm());

  final User user;

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: 'Ваш профиль'),
          resizeToAvoidBottomInset: false,
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              8.h.heightBox,
              // IMAGE
              ProfileImageWidget(
                size: 120,
                imageUrl: user.photoUrl ?? '',
                pickedImage: wm.profileImage.value,
                onTapEdit: () {
                  wm.pickImage();
                },
              ).alignAtCenter(),
              19.h.heightBox,
              // NAME
              Text(
                user.name ?? '',
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 18.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).alignAtCenter(),
              32.h.heightBox,
              _inputWithLabel(
                'Имя',
                'Введите имя',
                tec: wm.nameTEC.nonObservableValue,
              ),
              20.h.heightBox,
              _inputWithLabel(
                'Номер телефона',
                '7 777 777 77 77',
                suffixText: 'Изменить',
                tec: wm.phoneTEC.nonObservableValue,
              ),
              20.h.heightBox,
              _inputWithLabel(
                'Email',
                'example@gmail.com',
                tec: wm.emailTEC.nonObservableValue,
              ),
              20.h.heightBox,
            ],
          ),
          bottomNavigationBar: PinnedBottomButton(
            onPressed: () async {
              await wm.updateProfile();
              context.maybePop();
            },
            text: 'Обновить информацию',
          ),
        );
      },
    );
  }
}

Widget _inputWithLabel(
  String label,
  String hintText, {
  String? suffixText,
  TextEditingController? tec,
}) {
  return Column(
    children: [
      Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
      ).paddingDefault.alignAtCenterLeft(),
      8.h.heightBox,
      TextField(
        controller: tec,
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(18.w, 14.h, 18.w, 16.h),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.colorFF797979,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
          filled: true,
          fillColor: AppColors.colorFFF6F6F6,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          suffixIcon: suffixText != null
              ? Text(
                  suffixText,
                  style: TextStyle(
                    color: AppColors.colorFF6D48FF,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ).paddingSymmetric(horizontal: 18.w)
              : null,
        ),
      ).paddingDefault,
    ],
  );
}
