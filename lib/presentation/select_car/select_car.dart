import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/car_card_widget.dart';
import 'package:autobir/presentation/bookmarks/icon_button_oval_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'select_car_wm.dart';

@RoutePage()
class SelectCarScreen extends ElementaryWidget<SelectCarWm> with LoggerMixin {
  SelectCarScreen({super.key}) : super((context) => SelectCarWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        wm.selectedCar;
        wm.carsList.toList();
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            title: 'Выберите автомобиль',
            isLeading: true,
            actions: [
              IconButtonOval_(
                onTap: () {
                  context.pushRoute(AddCarRoute()).then((_) {
                    wm.fetchUserCars();
                  });
                },
                svg: Assets.images.add.svg(
                  width: 24.w,
                  height: 24.h,
                ),
              ).paddingLTRB(0, 16.h, 24.w, 16.h),
            ],
          ),
          body: switch (wm.state) {
            SelectCarState.loading => const CircularProgressIndicator().alignAtCenter(),
            SelectCarState.error => const Text('Ошибка').alignAtCenter(),
            SelectCarState.success => ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: wm.carsList.length,
                itemBuilder: (context, index) {
                  final car = wm.carsList.toList().elementAt(index);
                  return InkWell(
                    borderRadius: BorderRadius.circular(12.r),
                    onTap: () => wm.onCarTap(car),
                    child: CarCardWidget(
                      car: car,
                      isSelectable: true,
                      isSelected: wm.selectedCar == car,
                    ),
                  ).paddingLTRB(24.w, index == 0 ? 8.h : 0, 24.w, 16.w);
                },
              ),
          },
          bottomNavigationBar: PinnedBottomButton(
            onPressed: wm.onProceedPressed,
            text: 'Продолжить',
          ),
        );
      },
    );
  }
}
