import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_widgets/car_card_widget.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/bookmarks/icon_button_oval_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'my_cars_wm.dart';

@RoutePage()
class MyCarsScreen extends ElementaryWidget<MyCarsWm> with LoggerMixin {
  MyCarsScreen({super.key}) : super((context) => MyCarsWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            title: 'Мои автомобили',
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
            MyCarsState.loading => const CircularProgressIndicator().alignAtCenter(),
            MyCarsState.error => const Text('Ошибка').alignAtCenter(),
            MyCarsState.success => ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: wm.carsList.length,
                itemBuilder: (context, index) {
                  final car = wm.carsList.toList().elementAt(index);
                  return CarCardWidget(
                    car: car,
                    isSelectable: false,
                    isSelected: false,
                  ).paddingLTRB(24.w, index == 0 ? 8.h : 0, 24.w, 16.w);
                },
              ),
          },
        );
      },
    );
  }
}
