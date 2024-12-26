import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/car_wash_card.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'search_results_wm.dart';

@RoutePage()
class SearchResultsScreen extends ElementaryWidget<SearchResultsWm> with LoggerMixin {
  SearchResultsScreen({super.key, required this.searchFilterStore}) : super((context) => SearchResultsWm());

  final SearchFilterStore searchFilterStore;

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: ''),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (wm.state == SearchResultsState.success && wm.total != null && wm.total! > 0)
                Text(
                  (() {
                    if (wm.state == SearchResultsState.success) {
                      String text = 'Найдено ${wm.total} результата';
                      if (wm.searchFilterStore.name != null) text += 'по запросу "${wm.searchFilterStore.name}"';
                      return text;
                    }
                    return '';
                  })(),
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ).paddingDefault,
              16.h.heightBox,
              PagedListView<int, CarWash>(
                pagingController: wm.pagingController,
                builderDelegate: PagedChildBuilderDelegate<CarWash>(
                  itemBuilder: (context, item, index) => CarWashCard(
                    key: ValueKey(item.id),
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
              ).expanded(),
              24.h.heightBox,
            ],
          ),
        );
      },
    );
  }

  Column _noItemsWidget(SearchResultsWm wm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          (() {
            String text = '';
            if (wm.searchFilterStore.name != null) text += 'по запросу "${wm.searchFilterStore.name}"';
            text += 'ничего не найдено';
            return text.capitalizeFirst();
          })(),
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

  Widget _newPageErrorWidget(SearchResultsWm wm) {
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
    ).alignAtCenter().paddingSymmetric(vertical: 12.h);
  }

  Widget _newPageLoadingWidget() {
    return const CircularProgressIndicator().alignAtCenter().paddingSymmetric(vertical: 12.h);
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

  Column _firstPageErrorWidget(SearchResultsWm wm) {
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
