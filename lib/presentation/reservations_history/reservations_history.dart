import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/bookmarks/icon_button_oval_.dart';
import 'package:autobir/presentation/reservations_history/widgets/reservations_history_card_widget.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'reservations_history_wm.dart';

@RoutePage()
class ReservationsHistoryScreen extends ElementaryWidget<ReservationsHistoryWm> with LoggerMixin {
  ReservationsHistoryScreen({super.key}) : super((context) => ReservationsHistoryWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            title: 'История заказов',
            actions: [
              if (!kAppStoreBeta)
                IconButtonOval_(
                  onTap: () {},
                  svg: Assets.images.orderHistory.search.svg(
                    width: 20.w,
                    height: 20.h,
                  ),
                ).paddingLTRB(0, 16.h, 24.w, 16.h),
            ],
          ),
          body: PagedListView.separated(
            pagingController: wm.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Reservation>(
              itemBuilder: (context, item, index) => ReservationsHistoryCardWidget(
                reservation: item,
                cancelReservation: (reservation) async {
                  await wm.cancelReservation(reservation);
                },
              ).paddingDefault,
              noItemsFoundIndicatorBuilder: (context) {
                return _noItemsWidget(wm);
              },
              newPageProgressIndicatorBuilder: (context) {
                return _newPageLoadingWidget();
              },
              newPageErrorIndicatorBuilder: (context) {
                return _newPageErrorWidget(wm);
              },
              firstPageErrorIndicatorBuilder: (context) {
                return _firstPageErrorWidget(wm);
              },
              firstPageProgressIndicatorBuilder: (context) {
                return _firstPageLoadingWidget();
              },
            ),
            separatorBuilder: (context, index) => 12.h.heightBox,
          ),
        );
      },
    );
  }

  Column _noItemsWidget(ReservationsHistoryWm wm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Пустой список',
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            height: 1,
            letterSpacing: -0.30,
          ),
        ),
        8.h.heightBox,
        const Text('Попробуйте еще раз'),
        16.h.heightBox,
        TextButton_(
          text: 'Повторить',
          onPressed: () {
            wm.pagingController.refresh();
          },
        ),
      ],
    );
  }

  Widget _newPageErrorWidget(ReservationsHistoryWm wm) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: AppColors.colorFF6D48FF,
        borderRadius: BorderRadius.circular(999),
      ),
      child: IconButton(
        onPressed: () {
          wm.pagingController.retryLastFailedRequest();
        },
        color: Colors.white,
        icon: const Icon(Icons.refresh),
      ),
    ).alignAtCenter().paddingOnly(bottom: 12.h);
  }

  Widget _newPageLoadingWidget() {
    return const CircularProgressIndicator().alignAtCenter().paddingOnly(bottom: 12.h);
  }

  Widget _firstPageLoadingWidget() {
    return Column(
      children: [
        for (var i = 0; i < 6; ++i)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            width: double.infinity,
            height: 298.h,
          ).applyShimmer().paddingDefault.paddingOnly(bottom: 12.h),
      ],
    );
  }

  Column _firstPageErrorWidget(ReservationsHistoryWm wm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Ошибка',
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            height: 1,
            letterSpacing: -0.30,
          ),
        ),
        8.h.heightBox,
        const Text('Попробуйте еще раз'),
        16.h.heightBox,
        TextButton_(
          text: 'Повторить',
          onPressed: () {
            wm.pagingController.refresh();
          },
        ),
      ],
    );
  }
}
