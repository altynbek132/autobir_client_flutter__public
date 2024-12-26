import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/search/utils/recent_items_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/car_wash_card.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../_widgets/back_button_.dart';
import 'search_wm.dart';

@RoutePage()
class SearchScreen extends ElementaryWidget<SearchWm> with LoggerMixin {
  SearchScreen({
    super.key,
    this.searchFilterStore,
  }) : super((context) => SearchWm());

  final SearchFilterStore? searchFilterStore;

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
                floating: true,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: SafeArea(
                    child: Row(
                      children: [
                        const BackButton_(),
                        16.w.widthBox,
                        TextField(
                          controller: wm.searchController,
                          autofocus: true,
                          focusNode: wm.focusNode,
                          textInputAction: TextInputAction.search,
                          onSubmitted: wm.onSearchSubmitted,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                            hintText: 'Поиск',
                            hintStyle: TextStyle(
                              color: AppColors.colorFF797979,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                            filled: true,
                            fillColor: AppColors.background,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide.none,
                            ),
                            prefixIconConstraints: BoxConstraints.tight(
                              Size(
                                20 + 12.w + 9.w,
                                20,
                              ),
                            ),
                            prefixIcon: Center(child: Assets.images.search.searchNormalColor.svg()).paddingOnly(
                              left: 12.w,
                              right: 12.w,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                wm.searchController.clear();
                              },
                              child: Center(child: Assets.images.search.closeCircle.svg()).paddingOnly(
                                right: 12.w,
                              ),
                            ),
                            suffixIconConstraints: BoxConstraints.tight(
                              Size(
                                20 + 12.w,
                                20,
                              ),
                            ),
                          ),
                        ).expanded(),
                        16.w.widthBox,
                        InkWell(
                          onTap: wm.onFilterButtonPressed,
                          borderRadius: BorderRadius.circular(8.r),
                          child: Ink(
                            width: 48.w,
                            height: 48.w,
                            decoration: BoxDecoration(
                              color: AppColors.colorFFF6F6F6,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Center(
                              child: Assets.images.home.searchFilter.svg(),
                            ),
                          ),
                        ),
                      ],
                    ).paddingDefault.paddingOnly(bottom: 4.h),
                  ),
                ),
              ),
              12.h.heightBox.sliver,
              Text(
                'Недавний поиск',
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).paddingDefault.sliver,
              16.h.heightBox.sliver,
              SliverList.separated(
                itemCount: wm.getLatestSearchQueries.status == FutureStatus.pending
                    ? 5
                    : wm.getLatestSearchQueries.value?.length ?? 0,
                itemBuilder: (context, index) {
                  // shimmer effect
                  if (wm.getLatestSearchQueries.status == FutureStatus.pending) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorFFF6F6F6,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Assets.images.search.x.svg(),
                    ).applyShimmer().paddingDefault;
                  }
                  return LatestSearchElement(
                    label: wm.getLatestSearchQueries.value?.elementAt(index) ?? '',
                    onDelete: () {
                      wm.storageService
                          .deleteRecentlySearchedQuery(wm.getLatestSearchQueries.value?.elementAt(index) ?? '')
                          .then((_) {
                        wm.resetGetLatestSearchQueries();
                      });
                    },
                    onTap: () {
                      wm.searchController.text = wm.getLatestSearchQueries.value?.elementAt(index) ?? '';
                      wm.onSearchSubmitted(wm.getLatestSearchQueries.value?.elementAt(index) ?? '');
                    },
                  ).paddingDefault;
                },
                separatorBuilder: (context, index) => 16.h.heightBox,
              ),
              16.h.heightBox.sliver,
              Text(
                'Недавний просмотр',
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).paddingDefault.sliver,
              16.h.heightBox.sliver,
              if (wm.getRecentlyViewedCarWashes.value?.isEmpty ?? true)
                Text(
                  'Вы еще не просматривали автомойки',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ).paddingDefault.sliver,
              SliverList.separated(
                itemCount: wm.getRecentlyViewedCarWashes.status == FutureStatus.pending
                    ? 5
                    : wm.getRecentlyViewedCarWashes.value?.length ?? 0,
                itemBuilder: (context, index) {
                  // shimmer effect
                  if (wm.getRecentlyViewedCarWashes.status == FutureStatus.pending) {
                    return const CarWashCard(canTap: false).applyShimmer().paddingDefault;
                  }

                  return CarWashCard(
                    carWash: wm.getRecentlyViewedCarWashes.value?.elementAt(index),
                  ).paddingDefault;
                },
                separatorBuilder: (context, index) => 12.h.heightBox,
              ),
              24.h.heightBox.sliver,
            ],
          ),
        );
      },
    );
  }
}

class LatestSearchElement extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const LatestSearchElement({
    super.key,
    required this.label,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            label,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ).expanded(),
        GestureDetector(
          onTap: onDelete,
          child: Assets.images.search.x.svg(),
        ),
      ],
    );
  }
}
