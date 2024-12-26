import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_widgets/back_button_.dart';
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
import 'package:utils/utils_flutter.dart';

import 'promos_list_wm.dart';

@RoutePage()
class PromosListScreen extends ElementaryWidget<PromosListWm> with LoggerMixin {
  PromosListScreen({super.key}) : super((context) => PromosListWm());

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
                automaticallyImplyLeading: false,
                expandedHeight: (40 + 13 * 2).h,
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
                              '40% Скидка',
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
                ),
                separatorBuilder: (context, index) => 12.h.heightBox,
              ),
            ],
          ),
        );
      },
    );
  }
}
