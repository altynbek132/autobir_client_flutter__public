// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// ignore: unused_import
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';

import 'wallet_screen_wm.dart';

import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:math';

import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/transaction_card_widget.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class WalletScreen extends ElementaryWidget<WalletScreenWm> with LoggerMixin {
  WalletScreen({super.key}) : super((context) => WalletScreenWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(
            title: 'Кошелек',
            isLeading: true,
          ),
          body: Column(
            children: [
              8.h.heightBox,
              _balanceAndDepositButton(context, wm).paddingDefault,
              8.h.heightBox,
              ListView(
                padding: EdgeInsets.zero,
                children: [
                  16.h.heightBox,
                  _groupedByDate(title: 'Сегодня', count: 1),
                  _groupedByDate(title: 'Вчера', count: 1),
                  _groupedByDate(title: '22 Декабря 2023', count: 5),
                ],
              ).expanded(),
            ],
          ),
        );
      },
    );
  }

  Container _balanceAndDepositButton(BuildContext context, WalletScreenWm wm) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.color196D48FF,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Баланс кошелька',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF797979,
                      fontSize: 14.sp,
                      fontFamily: 'Muller',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.17,
                    ).withHeight(14.sp),
                  ),
                  4.h.heightBox,
                  Text(
                    '${wm.balance.value?.balance ?? ''} тг',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.colorFF242424,
                      fontSize: 16.sp,
                      fontFamily: 'Muller',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.17,
                    ).withHeight(16.sp),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(4.5.w),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                ),
                child: Assets.images.profile.walletFilled.svg(
                  width: 27.w,
                  height: 27.h,
                ),
              ),
            ],
          ),
          20.h.heightBox,
          TextButton(
            onPressed: () {
              context.pushRoute(const DepositWalletRoute());
            },
            style: TextButton.styleFrom(
              minimumSize: Size.fromHeight(48.h),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              backgroundColor: AppColors.colorFF6D48FF,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Пополнить кошелек',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ).withHeight(24.sp),
            ),
          ),
        ],
      ),
    );
  }

  Column _groupedByDate({required String title, int count = 3}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
          ).withHeight(14.sp),
        ).paddingDefault,
        8.h.heightBox,
        for (var i = 0; i < count; i++)
          TransactionCardWidget(
            title: 'Возврат за заказ #CRR0215AA3',
            amount: 500.0,
            isOrder: Random().nextBool(),
            date: '22 Декабрь | 7:30',
            balance: 'Баланс 30 000тг',
          ).paddingDefault.paddingOnly(bottom: 12.h),
        4.h.heightBox,
      ],
    );
  }
}
