import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/custom_radio_button.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

enum PaymentScreenMode {
  // страница "Пополнение кошелька"
  deposit,
  // страница "Методы оплаты"
  methods,
  // страница платежа за мойку
  payment
}

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({
    super.key,
    required this.mode,
  });

  final PaymentScreenMode mode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: switch (mode) {
          PaymentScreenMode.deposit => 'Пополнение кошелька',
          PaymentScreenMode.payment => 'Методы оплаты',
          PaymentScreenMode.methods => 'Методы оплаты',
        },
        isLeading: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          8.h.heightBox,
          ..._cardPaymentMethod(context),
          if (mode == PaymentScreenMode.payment) ..._cashPaymentMethod,
          ..._otherPaymentMethods,
        ],
      ),
      bottomNavigationBar: PinnedBottomButton(
        onPressed: switch (mode) {
          PaymentScreenMode.deposit => () {
              context.router.push(const DepositSuccessRoute());
            },
          PaymentScreenMode.payment => () {
              context.pushRoute(PreviewRoute());
            },
          PaymentScreenMode.methods => () {
              context.maybePop();
            },
        },
        text: switch (mode) {
          PaymentScreenMode.deposit => 'Подтвердить',
          PaymentScreenMode.payment => 'Подтвердить платеж',
          PaymentScreenMode.methods => 'Подтвердить',
        },
      ),
    );
  }

  List<Widget> get _otherPaymentMethods {
    return [
      Text(
        'Другие методы оплаты',
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 16.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ).paddingDefault,
      if (!kAppStoreBeta) ...[
        12.h.heightBox,
        _paypalButton().paddingDefault,
        _applePayButton().paddingDefault,
      ],
    ];
  }

  List<Widget> _cardPaymentMethod(BuildContext context) {
    return [
      Text(
        'Банковская карта',
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 16.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ).paddingDefault,
      12.h.heightBox,
      _OutlinedButton(
        icon: Assets.images.paymentMethods.card.svg(
          width: 24.w,
          height: 24.h,
        ),
        text: '4400 4101 7965 3455',
      ).paddingDefault.paddingOnly(bottom: 12.h),
      _OutlinedButton(
        onPressed: () {
          context.router.push(const AddCardRoute());
        },
        icon: Assets.images.paymentMethods.card.svg(
          width: 24.w,
          height: 24.h,
        ),
        text: 'Добавить карту',
        trailing: Assets.images.arrowRight.svg(
          width: 24,
          height: 24,
        ),
      ).paddingDefault,
      24.h.heightBox,
    ];
  }

  List<Widget> get _cashPaymentMethod {
    return [
      Text(
        'Наличными',
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 16.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ).paddingDefault,
      12.h.heightBox,
      _OutlinedButton(
        icon: Assets.images.paymentMethods.cash.svg(
          width: 24.w,
          height: 24.h,
        ),
        text: 'Наличные',
      ).paddingDefault,
      24.h.heightBox,
    ];
  }

  ClipMaterialInk _applePayButton() {
    return ClipMaterialInk(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
      child: InkWell(
        onTap: () {},
        child: Ink(
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
            border: Border(
              top: BorderSide.none,
              bottom: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 0.5.w,
              ),
              left: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 0.5.w,
              ),
              right: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 0.5.w,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.paymentMethods.applePay.image(
                width: 24.w,
                height: 24.h,
              ),
              12.w.widthBox,
              Text(
                'Apple Pay',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 14.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).expanded(),
              CustomRadio(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                fillColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColors.colorFF6D48FF;
                    }
                    return AppColors.colorFFD1D1D6;
                  },
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 2,
                groupValue: 1,
                onChanged: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  ClipMaterialInk _paypalButton() {
    return ClipMaterialInk(
      borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      child: InkWell(
        onTap: () {},
        child: Ink(
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
            border: Border.all(
              width: 0.5.w,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.paymentMethods.paypal.svg(
                width: 24.w,
                height: 24.h,
              ),
              12.w.widthBox,
              Text(
                'Paypal',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 14.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ).expanded(),
              CustomRadio(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                fillColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColors.colorFF6D48FF;
                    }
                    return AppColors.colorFFD1D1D6;
                  },
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 2,
                groupValue: 1,
                onChanged: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton({
    required this.icon,
    required this.text,
    this.trailing,
    this.onPressed,
  });

  final Function()? onPressed;
  final SvgPicture icon;
  final String text;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 48.h),
        padding: EdgeInsets.all(12.w),
        side: BorderSide(
          width: 0.5.w,
          color: Colors.black.withOpacity(0.1),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadowColor: AppColors.color07000000,
      ),
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          12.w.widthBox,
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ).expanded(),
          trailing ??
              CustomRadio(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                fillColor: WidgetStateProperty.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColors.colorFF6D48FF;
                    }
                    return AppColors.colorFFD1D1D6;
                  },
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 2,
                groupValue: 1,
                onChanged: (_) {},
              ),
        ],
      ),
    );
  }
}
