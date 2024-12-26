import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AddCarSuccessScreen extends StatelessWidget {
  const AddCarSuccessScreen({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: ''),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.images.check.svg(height: 126.h, width: 126.w),
          12.h.heightBox,
          Text(
            'Автомобиль успешно добавлен!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 22.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ).paddingSymmetric(horizontal: 70.w),
          16.h.heightBox,
          Text(
            '${car.make} ${car.model} ${car.year} г., ${car.licensePlate}\nбыл успешно добавлен в ваш список автомобилей.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 22 / 14,
            ),
          ).paddingSymmetric(horizontal: 70.w),
        ],
      ),
      bottomNavigationBar: PinnedBottomButton(
        onPressed: () {
          context.maybePop();
        },
        text: 'OK',
      ),
    );
  }
}
