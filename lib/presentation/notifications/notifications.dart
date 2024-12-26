import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/presentation/_widgets/back_button_.dart';
import 'package:autobir/presentation/notifications/widgets/notification_list_element.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'notifications_wm.dart';

@RoutePage()
class NotificationsScreen extends ElementaryWidget<NotificationsWm> with LoggerMixin {
  NotificationsScreen({super.key}) : super((context) => NotificationsWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                shadowColor: Colors.white,
                surfaceTintColor: Colors.white,
                backgroundColor: Colors.white,
                elevation: 0,
                expandedHeight: (41 + 24).h,
                automaticallyImplyLeading: false,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const BackButton_(),
                            (75 - 41).w.widthBox,
                            Text(
                              'Уведомления',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.colorFF242424,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                letterSpacing: -0.30,
                              ),
                            ).expanded(),
                            TextButton_(
                              text: (() {
                                final count = wm.pagingController.itemList?.length ?? 0;
                                return '${count} НОВЫХ';
                              })(),
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                letterSpacing: -0.30,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
                            ),
                          ],
                        ).paddingDefault,
                      ],
                    ),
                  ),
                ),
              ),
              12.h.heightBox.sliver,
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF797979,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      letterSpacing: 1.40,
                    ),
                  ),
                  const SizedBox.shrink().expanded(),
                  GestureDetector(
                    onTap: () {
                      wm.markAllAsRead();
                    },
                    child: Text(
                      'Отметить все как прочитанные',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.colorFF6D48FF,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ).paddingDefault.sliver,
              8.h.heightBox.sliver,
              PagedSliverList.separated(
                pagingController: wm.pagingController,
                builderDelegate: PagedChildBuilderDelegate<NotificationModel>(
                  itemBuilder: (context, item, index) => NotificationListItem(
                    notification: item,
                  ),
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
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: AppColors.colorFFE6E6E6,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Column _noItemsWidget(NotificationsWm wm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'У вас нет никаких уведомлений',
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

  Widget _newPageErrorWidget(NotificationsWm wm) {
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
          NotificationListItem(
            // mock
            notification: NotificationModel(
              id: 0,
              message: 'Уведомление',
              createdAt: DateTime.now(),
              userId: 1,
              time: DateTime.now(),
              isRead: false,
            ),
          ).applyShimmer().paddingOnly(bottom: 12.h),
      ],
    );
  }

  Column _firstPageErrorWidget(NotificationsWm wm) {
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
