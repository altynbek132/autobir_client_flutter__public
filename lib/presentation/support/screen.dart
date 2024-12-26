import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Служба поддержки'),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          8.h.heightBox,
          if (!kAppStoreBeta) ...[
            Text(
              'Свяжитесь с нами',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.colorFF6D48FF,
                fontSize: 16.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w500,
              ).withHeight(16.sp),
            ),
            24.h.heightBox,
          ],
          Divider(height: 1.h, thickness: 1.h, color: Colors.black.withOpacity(0.1)),
          24.h.heightBox,
          if (!kAppStoreBeta) ...[
            Tile_(
              value: '+ 7 700 700 77 00',
              icon: Assets.images.support.support.svg(
                width: 24.w,
                height: 24.h,
              ),
              title: 'Обслуживание клиентов',
            ).paddingDefault,
            12.h.heightBox,
            Tile_(
              value: '+ 7 700 700 77 00',
              icon: Assets.images.support.whatsapp.svg(
                width: 24.w,
                height: 24.h,
              ),
              title: 'WhatsApp',
            ).paddingDefault,
            12.h.heightBox,
          ],
          Tile_(
            value: 'autobir9@gmail.com',
            onTap: () async {
              await launchUrl(
                Uri(
                  scheme: 'mailto',
                  path: 'autobir9@gmail.com',
                ),
              );
            },
            icon: Assets.images.support.support.svg(
              width: 24.w,
              height: 24.h,
            ),
            title: 'Email',
          ).paddingDefault,
          12.h.heightBox,
          // Tile_(
          //   value: '@autobir.kz',
          //   icon: Assets.images.support.instagram.svg(
          //     width: 24.w,
          //     height: 24.h,
          //   ),
          //   title: 'Instagram',
          // ).paddingDefault,
          // 12.h.heightBox,
        ],
      ),
    );
  }
}

class Tile_ extends StatefulWidget {
  const Tile_({
    super.key,
    required this.value,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final String value;
  final SvgPicture icon;
  final String title;
  final Function()? onTap;

  @override
  State<Tile_> createState() => _Tile_State();
}

class _Tile_State extends State<Tile_> {
  final _expandableController = ExpandableController();

  @override
  void initState() {
    _expandableController.addListener(
      () => setState(() {}),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.5.w,
            color: Colors.black.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: ExpandablePanel(
        theme: const ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          tapHeaderToExpand: true,
          tapBodyToCollapse: true,
          hasIcon: false,
          useInkWell: false,
        ),
        controller: _expandableController,
        expanded: Column(
          children: [
            Divider(height: 1.h, thickness: 1.h, color: Colors.black.withOpacity(0.1)),
            Row(
              children: [
                2.w.widthBox,
                Container(
                  width: 6.w,
                  height: 6.h,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF6D48FF),
                    shape: OvalBorder(),
                  ),
                ),
                7.w.widthBox,
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    widget.value,
                    style: TextStyle(
                      color: widget.onTap != null ? Colors.blue : AppColors.colorFF797979,
                      decoration: widget.onTap != null ? TextDecoration.underline : TextDecoration.none,
                      decorationColor: Colors.blue,
                      fontSize: 12.sp,
                      fontFamily: 'Muller',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ).withHeight(12.sp),
                  ),
                ),
              ],
            ).paddingSymmetric(vertical: 16.h),
          ],
        ).paddingSymmetric(horizontal: 18.w),
        header: ExpandableButton(
          theme: const ExpandableThemeData(
            tapHeaderToExpand: true,
            tapBodyToCollapse: true,
            hasIcon: false,
            useInkWell: false,
          ),
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.icon,
                12.w.widthBox,
                Text(
                  widget.title,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ).withHeight(14.sp),
                ).expanded(),
                _expandableController.expanded
                    ? Assets.images.arrowUp.svg(
                        width: 8.w,
                        height: 8.h,
                      )
                    : Assets.images.arrowDown.svg(
                        width: 8.w,
                        height: 8.h,
                      ),
              ],
            ),
          ),
        ),
        collapsed: const SizedBox.shrink(),
      ),
    );
  }
}
