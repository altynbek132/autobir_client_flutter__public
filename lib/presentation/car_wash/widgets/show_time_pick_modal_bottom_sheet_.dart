import 'dart:io';

import 'package:api_client/api_client.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/car_wash/car_wash_wm.dart';
import 'package:autobir/presentation/car_wash/widgets/date_tab_bar_.dart';
import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliver_tools/sliver_tools.dart';

/// https://github.com/jamesblasco/modal_bottom_sheet/blob/639ccadc446486a9b39630a4e1f7e6de491dee1b/modal_bottom_sheet/lib/src/bottom_sheets/bar_bottom_sheet.dart#L76
Future<void> showTimePickModalBottomSheet_<T>({
  required BuildContext context,
  required CarWashWm wm,
  required TimeSlot? initialSelectd,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color barrierColor = Colors.black87,
  bool bounce = true,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? topControl,
  Duration? duration,
  RouteSettings? settings,
  SystemUiOverlayStyle? overlayStyle,
  double? closeProgressThreshold,
}) async {
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));
  await Navigator.of(context, rootNavigator: useRootNavigator)
      .push(
    ModalSheetRoute<T>(
      builder: (context) => TimePickModalContent(wm: wm),
      bounce: bounce,
      closeProgressThreshold: closeProgressThreshold,
      containerBuilder: (_, __, child) => TimePickModalWrapper(
        clipBehavior: clipBehavior,
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13.r),
                topRight: Radius.circular(13.r),
              ),
            ),
        backgroundColor: backgroundColor,
        overlayStyle: overlayStyle,
        child: child,
      ),
      secondAnimationController: secondAnimation,
      expanded: expand,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      isDismissible: isDismissible,
      modalBarrierColor: barrierColor,
      enableDrag: enableDrag,
      animationCurve: animationCurve,
      duration: duration,
      settings: settings,
    ),
  )
      .then(
    (value) {
      // если вышел не нажав "Подтвердить" то возвращаем старое значение
      if (value == null) {
        Future.delayed(const Duration(milliseconds: 250), () {
          wm.selectedTimeSlot = initialSelectd;
        });
      }
    },
  );
}

class TimePickModalWrapper extends StatelessWidget {
  final Widget child;
  final Clip? clipBehavior;
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final SystemUiOverlayStyle? overlayStyle;

  const TimePickModalWrapper({
    super.key,
    required this.child,
    this.clipBehavior,
    this.shape,
    this.backgroundColor,
    this.overlayStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Material(
        shape: shape,
        color: Colors.white,
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: overlayStyle ?? SystemUiOverlayStyle.light,
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  16.h.heightBox,
                  Text(
                    'Выберите дату и время',
                    style: TextStyle(
                      color: AppColors.colorFF242424,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                  16.h.heightBox,
                  Divider(
                    color: Colors.black.withOpacity(0.10000000149011612),
                    thickness: 1,
                    height: 1,
                  ).paddingDefault,
                ],
              ),
              Flexible(
                child: Material(
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  color: backgroundColor ?? Colors.white,
                  elevation: 0,
                  child: SizedBox(
                    width: double.infinity,
                    child: MediaQuery.removePadding(context: context, removeTop: true, child: child),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimePickModalContent extends StatefulWidget {
  const TimePickModalContent({
    super.key,
    required this.wm,
  });

  final CarWashWm wm;

  @override
  State<TimePickModalContent> createState() => _TimePickModalContentState();
}

class _TimePickModalContentState extends State<TimePickModalContent> {
  @override
  void initState() {
    wm = widget.wm;
    super.initState();
  }

  late final CarWashWm wm;

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = ['Сегодня', 'Завтра', 'Послезавтра'];

    return Observer(
      builder: (context) {
        wm.timeSlotsState;
        return DefaultTabController(
          length: tabs.length,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPinnedHeader(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 32.h, bottom: 20.h),
                      child: Center(
                        child: DateTabBar_(
                          initialTab: wm.dateTab.day - DateTime.now().day,
                          changeSelectedDate: (date) {
                            wm.changeDateTab(date);
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: tabs.map((String name) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        controller: ModalScrollController.of(context),
                        key: PageStorageKey<String>(name),
                        slivers: [
                          SliverOverlapInjector(
                            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                          ),
                          Builder(
                            builder: (context) {
                              // get time slots for selected date and sort them
                              final timeSlotsForCurrentTab = wm.timeSlots.toList().where((e) {
                                /// show only time slots with "startTime" after now
                                return e.startTime.isSameDate(wm.dateTab) && e.startTime.isAfter(DateTime.now());
                              }).toList()
                                ..sort((a, b) => a.startTime.compareTo(b.startTime));

                              return SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                sliver: SliverGrid.builder(
                                  itemCount: wm.timeSlotsState == FetchTimeSlotsState.loading
                                      ? 20
                                      : timeSlotsForCurrentTab.length,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 9,
                                    childAspectRatio: (31 + 44) / (12 + 30),
                                  ),
                                  itemBuilder: (context, index) {
                                    // shimmer effect while loading
                                    if (wm.timeSlotsState == FetchTimeSlotsState.loading) {
                                      return Container(
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ).applyShimmer();
                                    }

                                    final timeSlot = timeSlotsForCurrentTab[index];
                                    final isSelected = (() {
                                      if (wm.selectedTimeSlot == null) return false;
                                      return wm.selectedTimeSlot!.startTime.isSameDate(timeSlot.startTime) &&
                                          wm.selectedTimeSlot!.startTime.hour == timeSlot.startTime.hour &&
                                          wm.selectedTimeSlot!.startTime.minute == timeSlot.startTime.minute;
                                    })();
                                    final isAvailable = timeSlot.isAvailable;
                                    return InkWell(
                                      onTap: isAvailable
                                          ? () {
                                              wm.changeSelectedTimeSlot(timeSlot);
                                              setState(() {});
                                            }
                                          : null,
                                      child: Ink(
                                        decoration: ShapeDecoration(
                                          color: isSelected ? AppColors.colorFF6D48FF : Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: isSelected ? 0 : 1.w,
                                              color: isAvailable ? AppColors.colorFF000828 : AppColors.colorFF797979,
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '${timeSlot.startTime.hour}:${timeSlot.startTime.minute.toString().padLeft(2, '0')}',
                                            style: TextStyle(
                                              color: isSelected
                                                  ? Colors.white
                                                  : (isAvailable ? AppColors.colorFF242424 : AppColors.colorFF797979),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          SliverFillRemaining(
                            hasScrollBody: false,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextButton_(
                                  text: 'Подтвердить',
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                ).paddingDefault,
                                (Platform.isIOS ? 0 : 12.h).heightBox,
                                (context.mqPadding.bottom + context.mqViewInsets.bottom).heightBox,
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
