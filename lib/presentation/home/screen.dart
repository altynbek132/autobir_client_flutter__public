import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_stores/cities_store.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/popular_list/popular_list_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:autobir/presentation/promos_list/promos_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'search_bar_with_filter_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: 194.h,
                floating: true,
                pinned: true,
                snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: appBar(context),
                ),
              ),
              // SPECIAL FOR YOU CAR WASHES
              // Row(
              //   children: [
              //     Text(
              //       '#СпециальноДляВас',
              //       style: TextStyle(
              //         color: AppColors.colorFF242424,
              //         fontSize: 18.sp,
              //         fontWeight: FontWeight.w500,
              //         height: 1,
              //         letterSpacing: -0.30,
              //       ),
              //     ).expanded(),
              //     InkWell(
              //       onTap: () {
              //         context.pushRoute(PromosListRoute());
              //       },
              //       borderRadius: BorderRadius.circular(4.w),
              //       child: Text(
              //         'Больше',
              //         style: TextStyle(
              //           color: AppColors.colorFF6D48FF,
              //           fontSize: 12.sp,
              //           fontWeight: FontWeight.w400,
              //         ).withHeight(12.sp),
              //       ).paddingSymmetric(vertical: 3.h, horizontal: 4.w),
              //     ),
              //   ],
              // ).paddingDefault.paddingOnly(bottom: 12.h, top: 24.h).sliver,
              // PromosListWidget().paddingOnly(bottom: 32.h).sliver,
              24.h.heightBox.sliver,
              // SERVICES
              Text(
                'Сервисы',
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).paddingDefault.paddingOnly(bottom: 16.h).sliver,
              Row(
                children: [
                  usluga(
                    onTap: () {
                      context.pushRoute(CarWashListRoute());
                    },
                    Assets.images.home.avtomoiki.svg(),
                    'Автомойки',
                  ),
                  25.w.widthBox,
                  usluga(
                    onTap: () {
                      context.pushRoute(const CategoryRoute());
                    },
                    Assets.images.home.uslugi.svg(),
                    'Услуги',
                  ),
                ],
              ).paddingDefault.paddingOnly(bottom: 32.h).sliver,
              // POPULAR CAR WASHES
              Row(
                children: [
                  Text(
                    'Популярные мойки',
                    style: TextStyle(
                      color: AppColors.colorFF242424,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ).expanded(),
                  InkWell(
                    onTap: () {
                      context.pushRoute(PopularListRoute());
                    },
                    borderRadius: BorderRadius.circular(4.w),
                    child: Text(
                      'Больше',
                      style: TextStyle(
                        color: AppColors.colorFF6D48FF,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ).withHeight(12.sp),
                    ).paddingSymmetric(vertical: 3.h, horizontal: 4.w),
                  ),
                ],
              ).paddingDefault.paddingOnly(bottom: 16.h).sliver,
              PopularListWidget().paddingOnly(bottom: 32.h).sliver,
            ],
          ),
        ],
      ),
    );
  }

  Widget usluga(SvgPicture svg, String label, {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          svg,
          6.h.heightBox,
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  ConstrainedBox appBar(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 194.h,
      ),
      child: Container(
        decoration: ShapeDecoration(
          color: AppColors.colorFF6D48FF,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Assets.images.home.vector.svg(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                52.h.heightBox,
                Row(
                  children: [
                    location().expanded(),
                    notif(context),
                  ],
                ).paddingDefault,
                28.h.heightBox,
                const SearchBarWithFilterButton().paddingDefault,
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget notif(BuildContext context) {
    return ClipMaterialInk(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          context.pushRoute(NotificationsRoute());
        },
        child: Ink(
          width: 38.w,
          height: 38.h,
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.17000000178813934),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Center(
            child: SizedBox(
              height: 24.h,
              width: 24.h,
              child: Stack(
                children: [
                  Assets.images.home.notification.svg(),
                  Positioned(
                    top: 2.h,
                    right: 4.h,
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFF0000),
                        shape: OvalBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFF8667FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget location() {
    final citiesStore = locator<CitiesStore>();

    final textStyle = TextStyle(
      color: AppColors.colorFF242424,
      fontSize: 12.sp,
      fontFamily: 'Muller',
      fontWeight: FontWeight.w400,
      height: 1,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Локация',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ).withHeight(22.sp),
        ),
        SizedBox(height: 2.h),
        Observer(
          builder: (context) {
            return DropdownButtonHideUnderline(
              child: DropdownButton2<City>(
                trailing: const SizedBox.shrink(),
                buttonStyleData: ButtonStyleData(
                  height: 48.h,
                  padding: EdgeInsets.all(12.w),
                ),
                selectedItemBuilder: (context) {
                  return citiesStore.cities.map((city) {
                    return Row(
                      children: [
                        Assets.images.home.location.svg(),
                        4.w.widthBox,
                        Text(
                          city.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ).withHeight(22.sp),
                        ),
                      ],
                    );
                  }).toList();
                },
                dropdownStyleData: DropdownStyleData(
                  elevation: 1,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: AppColors.colorFF8667FF,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                isDense: false,
                value: citiesStore.selectedCity.value,
                onChanged: (newValue) => citiesStore.selectCity(newValue),
                items: citiesStore.cities
                    .map(
                      (city) => DropdownMenuItem<City>(
                        value: city,
                        child: Text(
                          city.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ).withHeight(22.sp),
                        ),
                      ),
                    )
                    .toList(),
                iconStyleData: IconStyleData(
                  iconSize: 20.sp,
                  icon: Assets.images.home.arrowLeft.svg().paddingOnly(left: 4.w),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
