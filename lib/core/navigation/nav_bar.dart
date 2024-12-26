import 'package:auto_route/auto_route.dart';
import 'package:autobir/DI/locator.dart';
import 'package:autobir/_utils/key_value_storage.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        MapRoute(),
        BookmarksRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          height: 78.h,
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Colors.black.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r),
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationButtonWidget(
                onTap: () => tabsRouter.setActiveIndex(0),
                icon: Assets.images.navBar.home.svg(
                  height: 24.h,
                  width: 24.w,
                  color: tabsRouter.activeIndex == 0 ? AppColors.colorFF6D48FF : null,
                ),
                isSelected: tabsRouter.activeIndex == 0,
                label: 'Главная',
              ),
              NavigationButtonWidget(
                onTap: () => tabsRouter.setActiveIndex(1),
                icon: Assets.images.navBar.map.svg(
                  height: 24.h,
                  width: 24.w,
                  color: tabsRouter.activeIndex == 1 ? AppColors.colorFF6D48FF : null,
                ),
                isSelected: tabsRouter.activeIndex == 1,
                label: 'Карта',
              ),
              NavigationButtonWidget(
                onTap: () async {
                  final isLoggedIn = await locator<KeyValueStorageService>().getAccessToken() != null;
                  if (isLoggedIn) {
                    tabsRouter.setActiveIndex(2);
                  } else {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Для доступа к избранным необходимо авторизоваться'),
                          action: SnackBarAction(
                            label: 'Войти',
                            onPressed: () {
                              context.router.push(SignInRoute());
                            },
                          ),
                        ),
                      );
                    }
                  }
                },
                icon: Assets.images.navBar.bookmark.svg(
                  height: 24.h,
                  width: 24.w,
                  color: tabsRouter.activeIndex == 2 ? AppColors.colorFF6D48FF : null,
                ),
                isSelected: tabsRouter.activeIndex == 2,
                label: 'Избранные',
              ),
              NavigationButtonWidget(
                onTap: () async {
                  final isLoggedIn = await locator<KeyValueStorageService>().getAccessToken() != null;
                  if (isLoggedIn) {
                    tabsRouter.setActiveIndex(3);
                  } else {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Для доступа к профилю необходимо авторизоваться'),
                          action: SnackBarAction(
                            label: 'Войти',
                            onPressed: () {
                              context.router.push(SignInRoute());
                            },
                          ),
                        ),
                      );
                    }
                  }
                },
                icon: Assets.images.navBar.profile.svg(
                  height: 24.h,
                  width: 24.w,
                  color: tabsRouter.activeIndex == 3 ? AppColors.colorFF6D48FF : null,
                ),
                isSelected: tabsRouter.activeIndex == 3,
                label: 'Профиль',
              ),
            ],
          ),
        );
      },
    );
  }
}

class NavigationButtonWidget extends StatelessWidget {
  const NavigationButtonWidget({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  final Function() onTap;
  final SvgPicture icon;
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(999),
        child: Ink(
          height: 67.h,
          width: 67.h,
          child: Column(
            children: [
              Assets.images.navBar.selected.svg(
                height: 8.h,
                width: 18.w,
                color: isSelected ? AppColors.colorFF6D48FF : Colors.transparent,
              ),
              7.h.heightBox,
              icon,
              6.h.heightBox,
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: isSelected ? AppColors.colorFF6D48FF : AppColors.colorFF797979,
                  fontSize: 10.sp,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
                ).withHeight(10.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
