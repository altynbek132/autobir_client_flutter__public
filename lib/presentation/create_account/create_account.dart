import 'package:autobir/constants.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/privacy_policy/webview.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_checkbox.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'create_account_wm.dart';

@RoutePage()
class CreateAccountScreen extends ElementaryWidget<CreateAccountWm> with LoggerMixin {
  CreateAccountScreen({super.key}) : super((context) => CreateAccountWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            key: wm.formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              physics: const ClampingScrollPhysics(),
              children: [
                (40 + context.mediaQueryViewPadding.top).h.heightBox,
                Text(
                  'Создать аккаунт',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ).paddingOnly(bottom: 16.h),
                Text(
                  'Заполните свои данные ниже',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ).paddingOnly(bottom: 64.h),
                _name(
                  wm,
                  'Имя',
                  'Введите имя',
                ).paddingOnly(bottom: 24.h),
                _phoneNumber(
                  wm,
                  'Номер телефона',
                  '700 777 00 00',
                ).paddingOnly(bottom: 24.h),
                _password(
                  wm,
                  'Пароль',
                  'Введите пароль',
                ).paddingOnly(bottom: 8.h),
                // AGGREE CHECKBOX
                Row(
                  children: [
                    CustomCheckbox(
                      isChecked: wm.isAgreementChecked,
                      toggleCheckbox: wm.toggleAgreement,
                    ),
                    8.w.widthBox,
                    Flexible(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Я соглашаюсь с ',
                              style: TextStyle(
                                color: AppColors.colorFF242424,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                            TextSpan(
                              text: 'Политикой конфиденциальности',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launchUrl(
                                    Uri.http('autobir.bar', 'privacy-policy'),
                                  );
                                },
                              style: TextStyle(
                                color: AppColors.colorFF6D48FF,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ).paddingOnly(bottom: 48.h),
                // REGISTER BUTTON
                TextButton_(
                  isLoading: wm.isLoading,
                  onPressed: wm.registerButtonPressed,
                  text: 'Зарегестрироваться',
                ).paddingOnly(bottom: 80.h),
                Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: AppColors.colorFFE6E6E6,
                ).paddingOnly(bottom: 32.h),
                // ALREADY HAVE AN ACCOUNT BUTTON
                TextButton(
                  onPressed: () {
                    context.router.replace(SignInRoute());
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                    minimumSize: Size(0, 12.h),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'У вас уже есть аккаунт? ',
                          style: TextStyle(
                            color: AppColors.colorFF242424,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ).withHeight(15.sp),
                        ),
                        TextSpan(
                          text: 'Войти',
                          style: TextStyle(
                            color: AppColors.colorFF6D48FF,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ).withHeight(15.sp),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ).alignAtCenter(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _name(
    CreateAccountWm wm,
    String label,
    String hintText,
  ) {
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
        ).alignAtCenterLeft(),
        8.h.heightBox,
        TextFormField(
          controller: wm.nameController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Введите имя';
            }
            return null;
          },
          textInputAction: TextInputAction.next,
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
          ),
        ),
      ],
    );
  }

  Widget _phoneNumber(
    CreateAccountWm wm,
    String label,
    String hintText,
  ) {
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
        ).alignAtCenterLeft(),
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
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
        ),
      ],
    );
  }

  Widget _password(
    CreateAccountWm wm,
    String label,
    String hintText,
  ) {
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
        ).alignAtCenterLeft(),
        8.h.heightBox,
        TextFormField(
          controller: wm.passwordController,
          obscureText: !wm.isPasswordVisible,
          obscuringCharacter: '*',
          textInputAction: TextInputAction.done,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
        ),
      ],
    );
  }
}
