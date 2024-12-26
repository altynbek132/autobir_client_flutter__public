import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/back_button_.dart';
import 'package:autobir/presentation/_widgets/car_wash_card.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/invisibility_keep_size.dart';

import 'car_wash_list_by_category_wm.dart';

@RoutePage()
class CarWashListByCategoryScreen extends ElementaryWidget<CarWashListByCategoryWm> with LoggerMixin {
  CarWashListByCategoryScreen({
    super.key,
    required this.categoryString,
  }) : super((context) => CarWashListByCategoryWm());

  final String categoryString;

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
                expandedHeight: (40 + 13 * 2).h,
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
                            Text(
                              categoryString,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.colorFF242424,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 1,
                              ),
                            ).expanded(),
                            const InvisibilityKeepSize(
                              child: BackButton_(),
                            ),
                          ],
                        ).paddingDefault,
                      ],
                    ),
                  ),
                ),
              ),
              12.h.heightBox.sliver,
              PagedSliverList.separated(
                pagingController: wm.pagingController,
                builderDelegate: PagedChildBuilderDelegate<CarWash>(
                  itemBuilder: (context, item, index) => CarWashCard(
                    carWash: item,
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
            ],
          ),
        );
      },
    );
  }

  Column _noItemsWidget(CarWashListByCategoryWm wm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Ничего не найдено',
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

  Widget _newPageErrorWidget(CarWashListByCategoryWm wm) {
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
          const CarWashCard(
            canTap: false,
          ).applyShimmer().paddingDefault.paddingOnly(bottom: 12.h),
      ],
    );
  }

  Column _firstPageErrorWidget(CarWashListByCategoryWm wm) {
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
