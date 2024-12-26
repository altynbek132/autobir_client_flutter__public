import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter.dart';

import '../_widgets/back_button_.dart';
import 'category.dart';

@RoutePage()
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            floating: true,
            automaticallyImplyLeading: false,
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
                          'Услуги',
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
          Wrap(
            spacing: 24.w,
            runAlignment: WrapAlignment.spaceBetween,
            children: CleaningOptionsEnum.values.mapIndexed<Widget>(
              (index, e) {
                return SizedBox(
                  width: 63.w,
                  child: Category(
                    onTap: () {
                      context.pushRoute(CarWashListByCategoryRoute(categoryString: e.name));
                    },
                    svg: _cleaningOptionIcons[index % _cleaningOptionIcons.length],
                    label: e.name,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                  ),
                );
              },
            ).toList(),
          ).paddingDefault.sliver,
        ],
      ),
    );
  }
}

final _cleaningOptionIcons = [
  Assets.images.category.frame.svg(),
  Assets.images.category.frame1.svg(),
  Assets.images.category.vector.svg(),
  Assets.images.category.frame2.svg(),
  Assets.images.category.frame3.svg(),
  Assets.images.category.group.svg(),
];
