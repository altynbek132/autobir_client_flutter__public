import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bookmark_categories.dart';
import 'icon_button_oval_.dart';
import '../_widgets/car_wash_card.dart';
import 'bookmarks_wm.dart';

@RoutePage()
class BookmarksScreen extends StatelessWidget with LoggerMixin {
  BookmarksScreen({super.key});

  late final wm = locator<BookmarksWm>();

  @override
  Widget build(context) {
    return Observer(
      builder: (context) {
        wm.pagingController;
        wm.bookmarksList.toList();
        return Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                shadowColor: Colors.white,
                surfaceTintColor: Colors.white,
                backgroundColor: Colors.white,
                elevation: 0,
                floating: true,
                snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox.square(dimension: 40.w),
                            Text(
                              'Избранное',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.colorFF242424,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                letterSpacing: -0.30,
                              ),
                            ).expanded(),
                            IconButtonOval_(svg: Assets.images.bookmarks.searchNormalLoopa.svg()),
                          ],
                        ).paddingDefault,
                      ],
                    ),
                  ),
                ),
              ),
              24.h.heightBox.sliver,
              const BookmarkCategories().sliver,
              24.h.heightBox.sliver,
              PagedSliverList.separated(
                pagingController: wm.pagingController,
                builderDelegate: PagedChildBuilderDelegate<Bookmark>(
                  itemBuilder: (context, item, index) => CarWashCard(
                    carWash: item.carWash,
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
              24.h.heightBox.sliver,
            ],
          ),
        );
      },
    );
  }

  Column _noItemsWidget(BookmarksWm wm) {
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
            wm.refresh();
          },
        ),
      ],
    );
  }

  Widget _newPageErrorWidget(BookmarksWm wm) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: AppColors.colorFF6D48FF,
        borderRadius: BorderRadius.circular(999),
      ),
      child: IconButton(
        onPressed: () {
          wm.retryLastFailedRequest();
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
          const CarWashCard(
            canTap: false,
          ).applyShimmer().paddingDefault.paddingOnly(bottom: 12.h),
      ],
    );
  }

  Column _firstPageErrorWidget(BookmarksWm wm) {
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
            wm.refresh();
          },
        ),
      ],
    );
  }
}
