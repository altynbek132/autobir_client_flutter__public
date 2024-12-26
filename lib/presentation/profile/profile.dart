import 'dart:io';
import 'dart:ui';

import 'package:api_client/api_client.dart';
import 'package:autobir/constants.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:autobir/presentation/payment_methods/screen.dart';
import 'package:autobir/presentation/profile/widgets/profile_tile.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';
import 'profile_wm.dart';

@RoutePage()
class ProfileScreen extends ElementaryWidget<ProfileWm> with LoggerMixin {
  ProfileScreen({super.key}) : super((context) => ProfileWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(title: 'Профиль', isLeading: false),
          body: ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              8.h.heightBox,
              if (wm.state == ProfileState.fetching) ..._shimmerProfile,
              if (wm.state == ProfileState.success) ..._profileData(wm),
              16.h.heightBox,
              _settingsList(context, wm),
              16.h.heightBox,
              TextButton_(
                // TODO: сделать нормально через wm
                onPressed: () async {
                  try {
                    // delete user
                    await locator<ApiService>().deleteUser();

                    // delete access token and navigate to welcome screen
                    await locator<KeyValueStorageService>().setUserModel(null);
                    await locator<KeyValueStorageService>().setAccessToken(null);

                    if (context.mounted) context.router.replaceAll([const WelcomeRoute()]);
                  } on Exception catch (_) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('ошибка при удалении'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  }
                },
                text: 'Удалить аккаунт',
                backgroundColor: AppColors.colorFFF6F6F6,
                textStyle: TextStyle(
                  color: AppColors.colorFF6D48FF,
                  fontSize: 16.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                ).withHeight(24.sp),
              ).paddingSymmetric(horizontal: 16.w),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _profileData(ProfileWm wm) {
    return [
      // IMAGE
      ClipOval(
        child: wm.user?.photoUrl == null
            ? Container(
                width: 100.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  color: AppColors.colorFF6D48FF,
                  shape: BoxShape.circle,
                ),
              ).alignAtCenter().paddingOnly(bottom: 18.h)
            : Image.network(
                wm.user!.photoUrl!,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: const BoxDecoration(
                      color: AppColors.colorFF6D48FF,
                      shape: BoxShape.circle,
                    ),
                  ).alignAtCenter();
                },
              ),
      ).alignAtCenter().paddingOnly(bottom: 18.h),
      // NAME
      Text(
        wm.user?.name ?? 'Имя отсутствует',
        style: TextStyle(
          color: AppColors.colorFF242424,
          fontSize: 18.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ).alignAtCenter(),
    ];
  }

  List<Widget> get _shimmerProfile {
    return [
      Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          color: AppColors.colorFF6D48FF,
          shape: BoxShape.circle,
        ),
      ).alignAtCenter().applyShimmer().paddingOnly(bottom: 18.h),
      Container(
        width: 120.w,
        height: 18.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.r),
        ),
      ).alignAtCenter().applyShimmer(),
    ];
  }

  Widget _settingsList(BuildContext context, ProfileWm wm) {
    return Column(
      children: [
        ProfileTile(
          onTap: () async {
            await context.router.push(EditProfileRoute(user: wm.user!));
            await wm.fetchUserProfile();
          },
          svg: Assets.images.profile.yourProfile.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Ваш профиль',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        if (!kAppStoreBeta) ...[
          ProfileTile(
            onTap: () {
              context.router.push(PaymentRoute(mode: PaymentScreenMode.methods));
            },
            svg: Assets.images.profile.paymentMethod.svg(
              width: 24.w,
              height: 24.h,
            ),
            text: Text(
              'Методы оплаты',
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 18.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
          const ProfileDivider().paddingDefault,
        ],
        ProfileTile(
          onTap: () {
            context.router.push(ReservationsHistoryRoute());
          },
          svg: Assets.images.profile.calendar.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'История заказов',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        ProfileTile(
          onTap: () {
            context.router.push(MyCarsRoute());
          },
          svg: Assets.images.profile.myCars.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Мои автомобили',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        if (!kAppStoreBeta) ...[
          ProfileTile(
            onTap: () {
              context.router.push(WalletRoute());
            },
            svg: Assets.images.profile.wallet.svg(
              width: 24.w,
              height: 24.h,
            ),
            text: Text(
              'Мой кошелек',
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 18.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
          const ProfileDivider().paddingDefault,
        ],
        ProfileTile(
          onTap: () {
            context.router.push(ChangePasswordRoute());
          },
          svg: Assets.images.profile.password.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Изменить пароль',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        ProfileTile(
          onTap: () {
            context.router.push(const SupportRoute());
          },
          svg: Assets.images.profile.info.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Служба поддержки',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        ProfileTile(
          onTap: () {
            launchUrl(
              Uri.http('autobir.bar', 'privacy-policy'),
            );
          },
          svg: Assets.images.profile.policy.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Политика конфиденциальности',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
        const ProfileDivider().paddingDefault,
        ProfileTile(
          onTap: () {
            _showLogoutConfirmationBottomSheet(context);
          },
          svg: Assets.images.profile.logout.svg(
            width: 24.w,
            height: 24.h,
          ),
          text: Text(
            'Выйти',
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 18.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> _showLogoutConfirmationBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.color19000000,
                  blurRadius: 20.r,
                  offset: Offset(0, -10.h),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                9.h.heightBox,
                Container(
                  width: 100.w,
                  height: 3.h,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                  ),
                ),
                24.h.heightBox,
                Text(
                  'Выход',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 18.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w500,
                  ).withHeight(24.sp),
                ),
                12.h.heightBox,
                Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: Colors.black.withOpacity(0.1),
                ).paddingDefault,
                12.h.heightBox,
                Text(
                  'Вы уверены что хотите выйти?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 16.sp,
                    fontFamily: 'Muller',
                    fontWeight: FontWeight.w400,
                  ).withHeight(24.sp),
                ),
                36.h.heightBox,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton_(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      text: 'Отмена',
                      backgroundColor: AppColors.colorFFF6F6F6,
                      textStyle: TextStyle(
                        color: AppColors.colorFF6D48FF,
                        fontSize: 16.sp,
                        fontFamily: 'Muller',
                        fontWeight: FontWeight.w500,
                      ).withHeight(24.sp),
                    ).expanded(),
                    11.w.widthBox,
                    TextButton_(
                      onPressed: () async {
                        final storage = locator<KeyValueStorageService>();
                        await storage.setAccessToken(null);
                        await storage.setUserModel(null);

                        if (context.mounted) context.router.replaceAll([const WelcomeRoute()]);
                      },
                      text: 'Да, выйти',
                    ).expanded(),
                  ],
                ).paddingDefault,
                (Platform.isIOS ? 0 : 12.h).heightBox,
                context.mqPadding.bottom.heightBox,
              ],
            ),
          ),
        );
      },
    );
  }
}
