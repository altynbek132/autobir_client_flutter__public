import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/payment_methods/screen.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class DepositWalletScreen extends StatefulWidget {
  const DepositWalletScreen({super.key});

  @override
  State<DepositWalletScreen> createState() => _DepositWalletScreenState();
}

class _DepositWalletScreenState extends State<DepositWalletScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Пополнить кошелек',
        isLeading: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          Container(
            decoration: ShapeDecoration(
              color: AppColors.color196D48FF,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _currentBalance(),
                18.h.heightBox,
                _frequentDepositAmounts(),
                12.h.heightBox,
                _inputTextField(),
                16.h.heightBox,
                _depositButton(),
              ],
            ),
          ).paddingDefault,
        ],
      ),
    );
  }

  TextButton _depositButton() {
    return TextButton(
      onPressed: () async {
        final apiService = locator<ApiService>();
        final res = await apiService.depositToWallet(amount: double.parse(_controller.text));
        await context.router.push(PaymentWebviewWalletRoute(paymentUrl: res.paymentLink));
        context.router.maybePop();
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
    );
  }

  Row _currentBalance() {
    return Row(
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
              '34 500 тг',
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
    );
  }

  TextField _inputTextField() {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: AppColors.colorFF242424,
        fontSize: 12.sp,
        fontFamily: 'Muller',
        fontWeight: FontWeight.w400,
      ).withHeight(12.sp),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        prefixIcon: Text(
          'ТГ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 16.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            letterSpacing: -0.17,
          ).withHeight(16.sp),
        ).paddingSymmetric(horizontal: 12.w),
        contentPadding: EdgeInsets.fromLTRB(0, 14.5.h, 12.h, 15.5.h),
        hintText: 'Введите сумму',
        hintStyle: TextStyle(
          color: AppColors.colorFF797979,
          fontSize: 12.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w400,
        ).withHeight(19.sp),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.colorFFE9E9E9,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.colorFFE9E9E9,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.colorFFE9E9E9,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
    );
  }

  GridView _frequentDepositAmounts() {
    final List<int> frequentDepositAmounts = [
      500,
      1000,
      1500,
      2000,
      3000,
      4000,
      5000,
      10000,
    ];

    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8.h,
      crossAxisSpacing: 7.w,
      childAspectRatio: 70 / 30,
      children: [
        for (int amount in frequentDepositAmounts)
          ClipMaterialInk(
            borderRadius: BorderRadius.circular(4.r),
            child: InkWell(
              onTap: () {
                _controller.text = ((double.tryParse(_controller.text) ?? 0) + amount).toInt().toString();
              },
              child: Ink(
                padding: EdgeInsets.symmetric(vertical: 9.h),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: AppColors.colorFFE9E9E9),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                child: Text(
                  '+ $amount',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 12.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w400,
                  ).withHeight(12.sp),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
