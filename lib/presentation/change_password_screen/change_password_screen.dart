// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';

import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'change_password_screen_wm.dart';

@RoutePage()
class ChangePasswordScreen extends ElementaryWidget<ChangePasswordScreenWm> with LoggerMixin {
  ChangePasswordScreen({super.key}) : super((context) => ChangePasswordScreenWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: 'Изменить пароль'),
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              8.h.heightBox,
              _passwordTextField(
                controller: wm.currentTEC.nonObservableValue,
                label: 'Текущий пароль',
                hint: 'Введите текущий пароль',
                isObscure: wm.isObscureCurrent.value,
                toggleVisibility: () {
                  wm.isObscureCurrent.value = !wm.isObscureCurrent.value;
                },
              ).paddingDefault,
              4.h.heightBox,
              _forgotPasswordButton().paddingDefault.alignAtCenterRight(),
              16.h.heightBox,
              _passwordTextField(
                controller: wm.newTEC.nonObservableValue,
                label: 'Новый пароль',
                hint: 'Введите новый пароль',
                isObscure: wm.isObscureNew.value,
                toggleVisibility: () {
                  wm.isObscureNew.value = !wm.isObscureNew.value;
                },
              ).paddingDefault,
              20.h.heightBox,
              _passwordTextField(
                controller: wm.confirmTEC.nonObservableValue,
                label: 'Подтвердить новый пароль',
                hint: 'Подтвердите новый пароль',
                isObscure: wm.isObscureConfirm.value,
                toggleVisibility: () {
                  wm.isObscureConfirm.value = !wm.isObscureConfirm.value;
                },
              ).paddingDefault,
            ],
          ),
          bottomNavigationBar: PinnedBottomButton(
            onPressed: () {
              wm.confirmPressed();
            },
            text: 'Подтвердить пароль',
          ),
        );
      },
    );
  }

  Column _passwordTextField({
    required String label,
    required String hint,
    required isObscure,
    required Function() toggleVisibility,
    TextEditingController? controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 12.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w400,
          ).withHeight(12.sp),
        ),
        6.h.heightBox,
        TextField(
          controller: controller,
          obscureText: isObscure,
          obscuringCharacter: '*',
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            hintText: 'Введите текущий пароль',
            hintStyle: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: AppColors.colorFFF6F6F6,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Assets.images.eyeSlash.svg(
                colorFilter: const ColorFilter.mode(AppColors.colorFF797979, BlendMode.srcIn),
              ),
              onPressed: toggleVisibility,
            ),
          ),
        ),
      ],
    );
  }

  TextButton _forgotPasswordButton() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        minimumSize: Size(0, 12.h),
      ),
      child: Text(
        'Забыли пароль?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.colorFF6D48FF,
          fontSize: 12.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.colorFF6D48FF,
        ).withHeight(12.sp),
      ),
    );
  }
}
