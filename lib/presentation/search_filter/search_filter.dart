import 'dart:io';

import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/bookmarks/filter_chip_.dart';
import 'package:autobir/presentation/search_filter/widgets/rating_list_item_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utils/utils_dart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/bookmarks/bookmark_categories.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'search_filter_wm.dart';

@RoutePage()
class SearchFilterScreen extends ElementaryWidget<SearchFilterWm> with LoggerMixin {
  SearchFilterScreen({super.key, required this.searchFilterStore}) : super((context) => SearchFilterWm());

  final SearchFilterStore searchFilterStore;

  final _textStyle = TextStyle(
    color: AppColors.colorFF242424,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        wm.cleaningOptions.toList();
        return Scaffold(
          appBar: const CustomAppBar(title: 'Фильтр'),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: context.mqPadding.bottom + context.mqViewInsets.bottom),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
              border: Border(
                left: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                top: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                right: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                bottom: BorderSide(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 26,
                  offset: Offset(30, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                12.h.heightBox,
                Row(
                  children: [
                    TextButton_(
                      onPressed: wm.onResetButtonPressed,
                      text: 'Сбросить',
                      backgroundColor: AppColors.colorFFF6F6F6,
                      color: AppColors.colorFF6D48FF,
                    ).expanded(),
                    9.w.widthBox,
                    TextButton_(
                      onPressed: wm.onApplyButtonPressed,
                      text: 'Применить',
                    ).expanded(),
                  ],
                ).paddingDefault,
                (Platform.isIOS ? 0 : 12.h).heightBox,
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              8.h.heightBox,
              // CITY SELECTOR
              Text(
                'Локация',
                style: _textStyle,
              ).alignAtCenterLeft().paddingDefault.paddingOnly(bottom: 12.h),
              dropdownCities(wm)
                  .applyShimmer(
                    enable: wm.isCitiesLoading,
                  )
                  .paddingDefault
                  .paddingOnly(bottom: 24.h),
              // CLEANING OPTIONS SELECTOR
              Text(
                'Услуги',
                textAlign: TextAlign.center,
                style: _textStyle,
              ).alignAtCenterLeft().paddingDefault.paddingOnly(bottom: 12.h),
              cleaningOptions(wm).paddingOnly(bottom: 24.h),
              // RATINGS SELECTOR
              // TODO: в дизайне диапозон (min, max rating) а на бэке ">= rating "
              Text(
                'Рейтинг',
                style: _textStyle,
              ).alignAtCenterLeft().paddingDefault.paddingOnly(bottom: 12.h),
              ratingsList(wm).paddingOnly(bottom: 24.h),
              // SORTING OPTIONS SELECTOR
              Text(
                'Сортировать',
                style: _textStyle,
              ).alignAtCenterLeft().paddingDefault.paddingOnly(bottom: 12.h),
              sortingOptions(wm),
            ],
          ),
        );
      },
    );
  }

  Container dropdownCities(SearchFilterWm wm) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.colorFFF6F6F6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<City>(
          buttonStyleData: ButtonStyleData(
            height: 42.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: AppColors.colorFFF6F6F6,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            elevation: 1,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: AppColors.colorFFF6F6F6,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          isDense: true,
          // FIXME
          // menuItemStyleData: MenuItemStyleData(
          //   padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
          // ),
          value: wm.selectedCity,
          onChanged: (newValue) {
            wm.setSelectedCity(newValue);
          },
          items: wm.cities.map<DropdownMenuItem<City>>((City city) {
            return DropdownMenuItem<City>(
              value: city,
              child: Text(
                city.name,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            );
          }).toList(),
          iconStyleData: const IconStyleData(iconSize: 0),
          trailing: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const SizedBox.shrink(),
              Positioned(
                right: -12 + 14.w,
                top: -12,
                child: Assets.images.filter.arrowDown.svg(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cleaningOptions(SearchFilterWm wm) {
    return SizedBox(
      height: 32.h,
      child: ListView.separated(
        itemCount: CleaningOptionsEnum.values.length + 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return FilterChip_(
              selected: wm.cleaningOptions.isEmpty,
              label: 'Все',
              onSelected: (selected) {
                wm.toggleCleaningOption(null);
              },
            );
          }
          final item = CleaningOptionsEnum.values[index - 1];
          final isActive = wm.cleaningOptions.toList().map((e) => e.name).contains(item.name);
          return FilterChip_(
            selected: isActive,
            label: item.name,
            onSelected: (selected) {
              wm.toggleCleaningOption(item);
            },
          );
        },
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        separatorBuilder: (context, index) => 16.w.widthBox,
      ),
    );
  }

  Widget ratingsList(SearchFilterWm wm) {
    final map = {
      '4.5 и выше': 4.5,
      '4.0 - 4.5': 4.0,
      '3.5 - 4.0': 3.5,
      '3.0 - 3.5': 3.0,
      '2.5 - 3.0': 2.5,
    };
    return Column(
      children: map.keys
          .map<Widget>(
            (label) => RatingListItem(
              label: label,
              isSelected: wm.rating == map[label],
              onTap: () {
                if (wm.rating == map[label]) {
                  wm.setRating(null);
                } else {
                  wm.setRating(map[label]);
                }
              },
            ).paddingDefault,
          )
          .separated(8.h.heightBox)
          .toList(),
    );
  }

  Widget sortingOptions(SearchFilterWm wm) {
    return ChipList<SearchSortBy>(
      list: SearchSortBy.values,
      toLabel: (item) => item.name,
      activeIndex: SearchSortBy.values.indexOf(wm.sortBy),
      onChipTapped: (index) {
        wm.setSortBy(SearchSortBy.values[index]);
      },
    );
  }
}
