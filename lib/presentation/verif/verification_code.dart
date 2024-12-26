import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:pinput/pinput.dart';
import 'verification_code_wm.dart';

@RoutePage()
class VerificationCodeScreen extends ElementaryWidget<VerificationCodeWm> with LoggerMixin {
  VerificationCodeScreen({
    super.key,
    required this.mobilePhone,
    required this.password,
  }) : super((context) => VerificationCodeWm());

  final String mobilePhone;
  final String password;

  @override
  Widget build(wm, context) {
    final pinputTextStyle = TextStyle(
      color: AppColors.colorFF242424,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1,
    );
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: ''),
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              Text(
                'Код верификации',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).paddingSymmetric(vertical: 16.h),
              Text(
                'Пожалуйста введите код который был отправлен на номер +${mobilePhone}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ).paddingDefault,
              // VERIF CODE INPUT
              Pinput(
                length: 4,
                controller: wm.codeController,
                androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                defaultPinTheme: PinTheme(
                  width: 56.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColors.colorFFF6F6F6,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: pinputTextStyle,
                ),
                preFilledWidget: Text(
                  '-',
                  style: pinputTextStyle,
                ),
                onCompleted: (String pin) {
                  wm.sendButtonPressed();
                },
                onSubmitted: (String pin) {
                  wm.sendButtonPressed();
                },
                onChanged: (String pin) {},
              ).paddingOnly(bottom: 40.h, top: 64.h),
              // TIMER / RESEND BUTTON
              ...wm.timerCountdown == null
                  ? [
                      Text(
                        'Не получили код?',
                        style: TextStyle(
                          color: AppColors.colorFF797979,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ).alignAtCenter(),
                      TextButton(
                        onPressed: wm.timerCountdown == null ? wm.startTimer : null,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                          minimumSize: Size(0, 12.h),
                        ),
                        child: Text(
                          'Отправить снова',
                          style: TextStyle(
                            color: AppColors.colorFF242424,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            height: 1,
                          ),
                        ),
                      ).paddingDefault.alignAtCenter(),
                    ]
                  : [
                      Text(
                        wm.formatDuration(wm.timerCountdown!),
                        style: TextStyle(
                          color: AppColors.colorFF797979,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ).alignAtCenter(),
                    ],
              // SEND BUTTON
              TextButton_(
                isLoading: wm.isLoading,
                onPressed: wm.sendButtonPressed,
                text: 'Отправить',
              ).paddingDefault.paddingOnly(top: 44.h),
            ],
          ),
        );
      },
    );
  }
}
