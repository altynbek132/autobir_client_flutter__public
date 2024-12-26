import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          // IMAGES
          Stack(
            clipBehavior: Clip.none,
            children: [
              // -5 for overflow
              SizedBox(height: (490 - 5).h, width: context.width),
              leftpic(),
              rightpic(),
              someoval(),
              centerpic(),
            ],
          ),
          // TITLE (Начало вашего ...)
          title().paddingOnly(bottom: 24.h),
          // SUBTITLE (Наше приложение ...)
          subtitle().paddingOnly(bottom: 24.h),
          // SIGN IN BUTTON
          TextButton_(
            text: 'Войти',
            onPressed: () {
              context.router.push(SignInRoute());
            },
          ).paddingSymmetric(horizontal: 24.w).paddingOnly(bottom: 12.h),
          // CONTINUE WITHOUT REGISTRATION BUTTON
          TextButton_(
            backgroundColor: AppColors.colorFFE6E6E6,
            textStyle: TextStyle(
              color: AppColors.colorFF6D48FF,
              fontSize: 16.sp,
            ).withHeight(24.sp),
            text: 'Продолжить без регистрации ',
            onPressed: () {
              context.router.replaceAll([const HomeRoute()]);
            },
          ).paddingSymmetric(horizontal: 24.w).paddingOnly(bottom: 24.h),
        ],
      ),
    );
  }

  SizedBox subtitle() {
    return SizedBox(
      width: 327.w,
      child: Text(
        'Наше приложение помогает вам быстро и легко найти ближайшие автомойки',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.colorFF797979,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
      ),
    );
  }

  SizedBox title() {
    return SizedBox(
      width: 327.w,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Начало вашего пути к ',
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
            TextSpan(
              text: 'сверкающему автомобилю начинается здесь!',
              style: TextStyle(
                color: AppColors.colorFF6D48FF,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                height: 1,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Positioned centerpic() {
    return Positioned(
      left: 63.w,
      top: 115.h,
      right: 50.w,
      child: Assets.images.welcome.group1000003352.image(
        fit: BoxFit.contain,
        height: 338.h,
      ),
    );
  }

  Positioned someoval() {
    return Positioned(
      left: -122.w,
      top: -234.h,
      child: Opacity(
        opacity: 0.15,
        child: Container(
          width: 257.10.w,
          height: 349.h,
          decoration: ShapeDecoration(
            shape: OvalBorder(
              side: BorderSide(width: 1.03.w, color: AppColors.colorFF6D48FF),
            ),
          ),
        ),
      ),
    );
  }

  Positioned rightpic() {
    return Positioned(
      left: 313.w,
      top: 68.h,
      child: Assets.images.welcome.ellipse3338.image(
        height: 119.45.h,
        fit: BoxFit.contain,
      ),
    );
  }

  Positioned leftpic() {
    return Positioned(
      right: 322.w,
      top: 388.h,
      child: Assets.images.welcome.ellipse3339.image(
        height: 119.45.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
