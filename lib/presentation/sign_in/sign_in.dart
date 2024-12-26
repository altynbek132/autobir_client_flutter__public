import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:utils/utils_dart/utils_dart.dart';
import 'package:utils/utils_dart.dart';

import 'sign_in_wm.dart';

@RoutePage()
class SignInScreen extends ElementaryWidget<SignInWm> with LoggerMixin {
  SignInScreen({super.key}) : super((context) => SignInWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            key: wm.formKey,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                (80 + context.mediaQueryViewPadding.top).h.heightBox,
                Text(
                  'Вход',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ).paddingDefault,
                16.h.heightBox,
                Text(
                  'Привет! Добро пожаловать, мы скучали',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ).paddingDefault,
                64.h.heightBox,
                ..._phoneNumber(
                  wm,
                  'Номер телефона',
                  '700 777 00 00',
                ),
                24.h.heightBox,
                // TODO: there is no icon for show password
                ..._password(
                  wm,
                  'Пароль',
                  'Введите пароль',
                ),
                4.h.heightBox,
                // FORGOT PASSWORD BUTTON
                TextButton(
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
                      height: 1,
                    ),
                  ),
                ).paddingDefault.alignAtCenterRight(),
                40.h.heightBox,
                // LOGIN BUTTON
                TextButton_(
                  isLoading: wm.isLoading,
                  onPressed: wm.loginPressed,
                  text: 'Войти',
                ).paddingDefault,
                80.h.heightBox,
                Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: AppColors.colorFFE6E6E6,
                ).paddingDefault,
                32.h.heightBox,
                // CREATE ACCOUNT BUTTON
                TextButton(
                  onPressed: () {
                    context.router.replace(CreateAccountRoute());
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                    minimumSize: Size(0, 12.h),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'У вас нету аккаунта? ',
                          style: TextStyle(
                            color: AppColors.colorFF242424,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text: 'Зарегестрироваться',
                          style: TextStyle(
                            color: AppColors.colorFF6D48FF,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ).paddingDefault.alignAtCenter(),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _phoneNumber(
    SignInWm wm,
    String label,
    String hintText,
  ) {
    return [
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
      TextFormField(
        controller: wm.phoneController,
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Введите номер телефона';
          }
          if (value.length < 13) {
            return 'Введите полный номер телефона';
          }
          return null;
        },
        inputFormatters: [
          MaskTextInputFormatter(
            mask: '### ### ## ##',
            filter: {"#": RegExp(r'[0-9]')},
            type: MaskAutoCompletionType.lazy,
          ),
        ],
        decoration: InputDecoration(
          prefixIcon: Text(
            '+7',
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ).paddingOnly(left: 16.w, right: 4.w),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
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
        ),
      ).paddingDefault,
    ];
  }

  List<Widget> _password(
    SignInWm wm,
    String label,
    String hintText,
  ) {
    return [
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
      TextFormField(
        controller: wm.passwordController,
        obscureText: !wm.isPasswordVisible,
        obscuringCharacter: '*',
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Введите пароль';
          }
          return null;
        },
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
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
          suffixIcon: IconButton(
            icon: wm.isPasswordVisible
                ? Assets.images.eyeSlash.svg(
                    colorFilter: const ColorFilter.mode(
                      AppColors.colorFF797979,
                      BlendMode.srcIn,
                    ),
                  )
                : Assets.images.eyeSlash.svg(
                    colorFilter: const ColorFilter.mode(
                      AppColors.colorFF797979,
                      BlendMode.srcIn,
                    ),
                  ),
            onPressed: wm.togglePasswordVisibility,
          ),
        ),
      ).paddingDefault,
    ];
  }
}
