import 'dart:io';

import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_stores/calculate_distance_store.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/dashed_line.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/_widgets/title_value_tile_widget.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'preview_wm.dart';

@RoutePage()
class PreviewScreen extends ElementaryWidget<PreviewWm> with LoggerMixin {
  PreviewScreen({super.key}) : super((context) => PreviewWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: 'Предпросмотр'),
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              8.h.heightBox,
              _carWashCard(wm).paddingDefault,
              ..._mainInfo(wm),
              ..._paymentInvoice(wm),
              ..._total(wm),
              // _paymentMethod(context).paddingDefault,
              8.h.heightBox,
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.fromLTRB(
              24.w,
              12.h,
              24.w,
              (Platform.isIOS ? 0 : 12.h) + context.mqPadding.bottom + context.mqViewInsets.bottom,
            ),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.w,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.color19000000,
                  blurRadius: 26.r,
                  offset: Offset(30.w, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _promocodeTextField(wm),
                10.h.heightBox,
                TextButton_(
                  onPressed: wm.postReservation,
                  text: 'Забронировать',
                  isLoading: wm.isLoading,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  TextField _promocodeTextField(PreviewWm wm) {
    return TextField(
      controller: wm.promocodeController,
      style: TextStyle(
        color: AppColors.colorFF242424,
        fontSize: 14.sp,
        fontFamily: 'Muller',
        fontWeight: FontWeight.w400,
      ).withHeight(14.sp),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.colorFFF6F6F6,
        contentPadding: EdgeInsets.all(12.r),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: 'Промокод',
        hintStyle: TextStyle(
          color: AppColors.colorFF797979,
          fontSize: 14.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w400,
        ).withHeight(14.sp),
        suffixIconConstraints: const BoxConstraints(),
        suffixIcon: ClipMaterialInk(
          borderRadius: BorderRadius.circular(6.r),
          child: InkWell(
            onTap: () {},
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              decoration: ShapeDecoration(
                color: AppColors.colorFF6D48FF,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Text(
                'Использовать',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w400,
                ).withHeight(16.sp),
              ),
            ),
          ),
        ).paddingSymmetric(vertical: 5.5.h),
      ),
    );
  }

  Row _paymentMethod(BuildContext context) {
    return Row(
      children: [
        Assets.images.preview.moneys.svg(width: 24.w, height: 24.h),
        12.w.widthBox,
        Text(
          'Наличными',
          style: TextStyle(
            color: AppColors.colorFF797979,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
          ).withHeight(14.sp),
        ).expanded(),
        TextButton(
          onPressed: () {
            context.maybePop();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            minimumSize: Size(0, 12.h),
          ),
          child: Text(
            'Изменить',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF6D48FF,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
              decorationColor: AppColors.colorFF6D48FF,
            ).withHeight(14.sp),
          ),
        ),
      ],
    );
  }

  List<Widget> _total(PreviewWm wm) {
    return [
      DashedLine(
        height: 0.5.h,
        width: 8.w,
        color: Colors.black.withOpacity(0.1),
      ).paddingLTRB(24.w, 8.h, 24.w, 24.h),
      TitleValueTileWidget(
        title: 'Итого',
        value: '${wm.createReservationStore.total} тг',
      ).paddingDefault,
      Divider(
        height: 49.h,
        thickness: 0.5.h,
        color: Colors.black.withOpacity(0.1),
      ).paddingDefault,
    ];
  }

  List<Widget> _paymentInvoice(PreviewWm wm) {
    return [
      Divider(
        height: 49.h,
        thickness: 0.5.h,
        color: Colors.black.withOpacity(0.1),
      ).paddingDefault,
      for (final option in wm.createReservationStore.cleaningOptions)
        TitleValueTileWidget(
          title: option.name ?? '-',
          value: '${option.price} тг',
        ).paddingDefault.paddingOnly(bottom: 16.h),
    ];
  }

  List<Widget> _mainInfo(PreviewWm wm) {
    return [
      Divider(
        height: 49.h,
        thickness: 0.5.h,
        color: Colors.black.withOpacity(0.1),
      ).paddingDefault,
      TitleValueTileWidget(
        title: 'Время бронирования',
        value: wm.createReservationStore.timeSlot != null
            ? fullDateAndTime(wm.createReservationStore.timeSlot!.startTime)
            : '-',
      ).paddingDefault.paddingOnly(bottom: 16.h),
      TitleValueTileWidget(
        title: 'Авто',
        value: (() {
          final carTypeText = carTypeMap[wm.createReservationStore.car?.carTypeId ?? 0]?.name ?? '-';
          final licensePlate = wm.createReservationStore.car?.licensePlate ?? '-';
          return '$carTypeText | $licensePlate';
        })(),
      ).paddingDefault.paddingOnly(bottom: 16.h),
      // FIXME: ???
      const TitleValueTileWidget(
        title: 'Тип сервиса',
        value: 'Автомойка',
      ).paddingDefault,
    ];
  }

  Widget _carWashCard(PreviewWm wm) {
    if (wm.createReservationStore.carWash == null) return const SizedBox.shrink();
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // IMAGE
        // TODO: change to 'photoUrl' from CarWash
        Assets.images.preview.moikaImage.image(
          width: 110.w,
          height: 115.h,
        ),
        12.w.widthBox,
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TYPE AND RATING
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 0.w,
                maxWidth: 205.w,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: ShapeDecoration(
                      color: AppColors.colorFFF6F6F6,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                    ),
                    child: Text(
                      'Автомойка',
                      style: TextStyle(
                        color: AppColors.colorFF6D48FF,
                        fontSize: 10.sp,
                        fontFamily: 'Muller',
                        fontWeight: FontWeight.w400,
                      ).withHeight(10.sp),
                    ),
                  ), //.expanded(),
                  1.w.widthBox.expanded(),
                  Assets.images.preview.star.svg(),
                  4.w.widthBox,
                  Text(
                    wm.createReservationStore.carWash!.overallRating.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.colorFF797979,
                      fontSize: 12.sp,
                      fontFamily: 'Muller',
                      fontWeight: FontWeight.w400,
                    ).withHeight(12.sp),
                  ),
                ],
              ),
            ).paddingOnly(bottom: 6.h),
            // TITLE
            Text(
              wm.createReservationStore.carWash!.name,
              maxLines: 3,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 15.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w500,
              ).withHeight(15.sp),
            ).paddingOnly(bottom: 6.h),
            // LOCATION AND TIME
            // TODO: в CarWash нет дистанции и времени до мойки
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.preview.location.svg(
                  width: 18.w,
                  height: 18.h,
                ),
                4.w.widthBox,
                Text(
                  (() {
                    final carWash = wm.createReservationStore.carWash;
                    final double? distanceInKm =
                        locator<CalculateDistanceStore>().distanceToDevice(carWash?.latitude, carWash?.longitude);
                    if (distanceInKm != null) {
                      if (distanceInKm < 1) {
                        return '<1 км';
                      } else {
                        return '${distanceInKm.toStringAsFixed(0)} км';
                      }
                    } else {
                      return '- км';
                    }
                  })(),
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w400,
                  ).withHeight(12.sp),
                ),
                15.w.widthBox,
                Assets.images.preview.clock.svg(
                  width: 18.w,
                  height: 18.h,
                ),
                4.w.widthBox,
                Text(
                  '5 мин ',
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w400,
                  ).withHeight(12.sp),
                ),
              ],
            ),
          ],
        ).expanded(),
      ],
    );
  }
}
