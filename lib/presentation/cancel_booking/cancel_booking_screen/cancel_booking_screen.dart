// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';

import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/custom_radio_button.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'cancel_booking_screen_wm.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class CancelBookingScreen extends ElementaryWidget<CancelBookingScreenWm> with LoggerMixin {
  CancelBookingScreen({super.key}) : super((context) => CancelBookingScreenWm());

  @override
  Widget build(wm, context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Отменить бронирование'),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          8.h.heightBox,
          Text(
            'Пожалуйста, укажите причину отмены бронирования:',
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 14.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ).withHeight(17.sp),
          ).paddingDefault,
          20.h.heightBox,
          _reasonRadioButton(wm, 'Изменились планы'),
          _reasonRadioButton(wm, 'Проблемы с транспортом'),
          _reasonRadioButton(wm, 'Неожиданные дела'),
          _reasonRadioButton(wm, 'Неожиданные обязательства'),
          _reasonRadioButton(wm, 'Личные причины'),
          _reasonRadioButton(wm, 'Другое'),
          16.h.heightBox,
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Colors.black.withOpacity(0.1),
          ).paddingDefault,
          24.h.heightBox,
          ..._otherTextField(wm),
        ],
      ),
      bottomNavigationBar: Observer(
        builder: (_) => PinnedBottomButton(
          onPressed: wm.canConfirm
              ? () async {
                  await wm.onConfirmPressed();
                }
              : null,
          text: 'Подтвердить',
        ),
      ),
    );
  }

  List<Widget> _otherTextField(CancelBookingScreenWm wm) {
    return [
      Text(
        'Другое',
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 12.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w400,
        ).withHeight(12.sp),
      ).paddingDefault,
      8.h.heightBox,
      Observer(
        builder: (_) => TextField(
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 5,
          minLines: 5,
          onChanged: wm.setOtherReason,
          enabled: wm.isOtherReasonSelected,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 15.w),
            hintText: 'Напишите свою причину',
            hintStyle: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: wm.isOtherReasonSelected ? AppColors.colorFFF6F6F6 : Colors.grey[300],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ).paddingDefault,
    ];
  }

  Widget _reasonRadioButton(CancelBookingScreenWm wm, String reasonText) {
    return Observer(
      builder: (_) => InkWell(
        onTap: () => wm.selectReason(reasonText),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomRadio(
              outerRadius: 10.w,
              innerRadius: 5.w,
              toggleable: true,
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              fillColor: WidgetStateProperty.resolveWith(
                (states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColors.colorFF6D48FF;
                  }
                  return AppColors.colorFF797979;
                },
              ),
              value: reasonText,
              groupValue: wm.selectedReason,
              onChanged: (value) => wm.selectReason(value as String),
            ),
            12.w.widthBox,
            Text(
              reasonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 16.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
              ).withHeight(16.sp),
            ),
          ],
        ).paddingSymmetric(horizontal: 24.w, vertical: 8.h),
      ),
    );
  }
}
