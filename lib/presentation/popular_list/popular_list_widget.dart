import 'package:api_client/api_client.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/popular_list/popular_list.dart';
import 'package:autobir/presentation/popular_list/popular_list_wm.dart';
import 'package:autobir/presentation/popular_list/widgets/popular_list_car_wash_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:autobir/presentation/_styles/styles.dart';

/// this widget also uses PopularListWm
class PopularListWidget extends PopularListScreen {
  PopularListWidget({super.key}) : super(perPage: 6);

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return SizedBox(
          height: 180.h,
          child: PagedListView.separated(
            pagingController: wm.pagingController,
            scrollDirection: Axis.horizontal,
            builderDelegate: PagedChildBuilderDelegate<CarWash>(
              itemBuilder: (context, item, index) => PopularListCarWashCard(
                carWash: item,
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
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            separatorBuilder: (context, index) => 16.w.widthBox,
          ),
        );
      },
    );
  }

  Column _noItemsWidget(PopularListWm wm) {
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

  Transform _newPageErrorWidget(PopularListWm wm) {
    return Transform.translate(
      offset: Offset(0, 41.5.h),
      child: Container(
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
      ).alignAtTopCenter(),
    );
  }

  Transform _newPageLoadingWidget() {
    return Transform.translate(
      offset: Offset(0, 50.h),
      child: SizedBox(
        height: 50.h,
        width: 50.w,
        child: const CircularProgressIndicator().alignAtTopCenter(),
      ),
    );
  }

  Row _firstPageLoadingWidget() {
    return Row(
      children: [
        for (var i = 0; i < 3; ++i)
          PopularListCarWashCard(
            canTap: false,
            // mock CarWash for shimmer
            carWash: CarWash(
              cityId: 1,
              id: 1,
              address: '',
              latitude: null,
              longitude: null,
              name: '',
              hasPromo: false,
              overallRating: 1,
              photoUrl: null,
              isBookmarked: false,
              bookmarkId: 1,
            ),
          ).applyShimmer(baseColor: Colors.grey).paddingOnly(right: 16.w),
      ],
    );
  }

  Column _firstPageErrorWidget(PopularListWm wm) {
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
