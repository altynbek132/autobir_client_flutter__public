import 'package:api_client/api_client.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/presentation/_stores/create_reservation_store.dart';
import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:autobir/presentation/_widgets/keyboard_padding.dart';
import 'package:autobir/presentation/car_wash/widgets/maps_sheet.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/back_button_.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/car_wash/widgets/show_time_pick_modal_bottom_sheet_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:ensure_visible_when_focused/ensure_visible_when_focused.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'car_wash_wm.dart';

@RoutePage()
class CarWashScreen extends ElementaryWidget<CarWashWm> with LoggerMixin {
  CarWashScreen({
    super.key,
    required this.carWash,
  }) : super((context) => CarWashWm());

  final CarWash carWash;

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        wm.selectedTimeSlot;
        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              // BACKGROUND IMAGE
              Assets.images.carWashScreen.carWashBackground.image(fit: BoxFit.cover),
              Positioned(
                top: 60.h,
                left: 24.w,
                child: BackButton_(
                  onBackPressed: () {
                    context.maybePop();
                    locator<CreateReservationStore>().reset();
                  },
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 625 / 812,
                minChildSize: 625 / 812,
                maxChildSize: (812 - 100 - 20) / 812,
                builder: (BuildContext context, ScrollController scrollController) {
                  return ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                    child: CustomScrollView(
                      controller: scrollController,
                      slivers: [
                        Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.r),
                                topRight: Radius.circular(30.r),
                              ),
                            ),
                          ),
                          width: double.infinity,
                          child: _mainContents(context, wm),
                        ).sliver,
                        bottomButtonHeight,
                        20.h.heightBox.sliver,
                        const KeyboardPadding().sliver,
                      ],
                    ),
                  );
                },
              ),
              // PINNED BOTTOM BUTTON
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: PinnedBottomButton(
                  onPressed: wm.onProceedPressed,
                  text: 'Продолжить',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Column _mainContents(BuildContext context, CarWashWm wm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TYPE
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: ShapeDecoration(
                color: AppColors.colorFFF6F6F6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Автомойка',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF6D48FF,
                      fontSize: 14.sp,
                      fontFamily: 'Muller',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            // RATING
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Assets.images.carWashScreen.star.svg(
                  height: 18.h,
                  width: 18.w,
                ),
                4.w.widthBox,
                Text(
                  '4.8',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 14.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
              ],
            ),
          ],
        ).paddingDefault,
        24.h.heightBox,
        Text(
          wm.carWash.name,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 22.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ).paddingDefault,
        12.h.heightBox,
        Text(
          wm.carWash.address,
          style: TextStyle(
            color: AppColors.colorFF797979,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ).paddingDefault,
        12.h.heightBox,
        ElevatedButton(
          onPressed: () {
            MapsSheet.show(
              context: context,
              onMapTap: (map) {
                map.showDirections(
                  destination: Coords(
                    wm.carWash.latitude!,
                    wm.carWash.longitude!,
                  ),
                );
              },
            );
          },
          child: Text(
            'Показать на карте',
            style: TextStyle(
              color: AppColors.colorFF6D48FF,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ).paddingDefault,
        12.h.heightBox,
        Text(
          'ЗАБРОНИРУЙТЕ МЕСТО',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.colorFF797979,
            fontSize: 12.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w400,
            height: 1,
            letterSpacing: 1.20,
          ),
        ).paddingDefault,
        24.h.heightBox,
        Text(
          'Дата и Время',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 18.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ).paddingDefault,
        16.h.heightBox,
        _dateTimeSelector(context, wm).paddingDefault,
        24.h.heightBox,
        Container(
          width: 327.w,
          height: 44.h,
          padding: EdgeInsets.fromLTRB(12.w, 10.h, 20.w, 10.h),
          decoration: ShapeDecoration(
            color: AppColors.colorFFF6F6F6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(120.r),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 2,
                color: AppColors.colorFF6D48FF,
              ),
              6.w.widthBox,
              Text(
                'Ориентировочная продолжительность обслуживания: 1,5 часа',
                maxLines: 3,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 12.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).expanded(),
            ],
          ),
        ).paddingDefault,
        24.h.heightBox,
        Text(
          'Примечание для поставщика услуг',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ).paddingDefault,
        8.h.heightBox,
        // todo: ensure visible when focused
        EnsureVisibleWhenFocused(
          alwaysAlign: true,
          focusNode: wm.focusNode,
          child: TextField(
            controller: wm.commentController,
            focusNode: wm.focusNode,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 16.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
            ),
            maxLines: 3,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              filled: true,
              fillColor: AppColors.colorFFF6F6F6,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide.none,
              ),
              hintText: 'Напишите сюда',
              hintStyle: TextStyle(
                color: AppColors.colorFF797979,
                fontSize: 16.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
              ),
            ),
          ).paddingDefault,
        ),
      ],
    );
  }

  ClipMaterialInk _dateTimeSelector(BuildContext context, CarWashWm wm) {
    return ClipMaterialInk(
      borderRadius: BorderRadius.circular(90.r),
      child: InkWell(
        onTap: () {
          wm.fetchTimeSlots();
          showTimePickModalBottomSheet_(
            context: context,
            wm: wm,
            initialSelectd: wm.selectedTimeSlot,
          );
        },
        child: Ink(
          padding: EdgeInsets.fromLTRB(24.w, 9.h, 32.w, 14.h),
          decoration: ShapeDecoration(
            color: AppColors.colorFFF6F6F6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90.r),
            ),
          ),
          // todo: add gap
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.carWashScreen.calendar.svg(
                width: 24.w,
              ),
              8.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.80,
                    child: Text(
                      'Дата',
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.colorFF797979,
                        fontSize: 12.sp,
                        fontFamily: 'Muller',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    wm.selectedTimeSlot != null ? dayAndFullMonth(wm.selectedTimeSlot!.startTime) : 'Выберите дату',
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.colorFF242424,
                      fontSize: 15.sp,
                      fontFamily: 'Muller',
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ],
              ).expanded(),
              Assets.images.carWashScreen.timer.svg(
                width: 24.w,
              ),
              8.w.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.80,
                    child: Text(
                      'Время',
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.colorFF797979,
                        fontSize: 12.sp,
                        fontFamily: 'Muller',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    wm.selectedTimeSlot != null
                        ? '${wm.selectedTimeSlot!.startTime.hour}:${wm.selectedTimeSlot!.startTime.minute.toString().padLeft(2, '0')}'
                        : 'Выберите время',
                    maxLines: 1,
                    style: TextStyle(
                      color: AppColors.colorFF242424,
                      fontSize: 15.sp,
                      fontFamily: 'Muller',
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ],
              ).expanded(),
            ],
          ),
        ),
      ),
    );
  }

  Widget get bottomButtonHeight => 72.h.heightBox.sliver;
}
