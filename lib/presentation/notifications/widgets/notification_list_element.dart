import 'package:api_client/api_client.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    super.key,
    required this.notification,
  });

  final NotificationModel? notification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Row(
          children: [
            Container(
              width: 56.w,
              height: 56.h,
              decoration: const ShapeDecoration(
                color: AppColors.colorFFF6F6F6,
                shape: OvalBorder(),
              ),
              child: Center(
                child: Assets.images.notifications.calendarTick.svg(),
              ),
            ),
            14.w.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification?.message ?? '',
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.colorFF242424,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    ).expanded(),
                    12.w.widthBox,
                    Text(
                      notification?.time != null ? notifcationDateTime(notification!.time) : '',
                      style: TextStyle(
                        color: AppColors.colorFF797979,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                6.h.heightBox,
                Text(
                  notification?.message ?? '',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: AppColors.colorFF797979,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
              ],
            ).expanded(),
          ],
        ).paddingSymmetric(vertical: 16.h, horizontal: 24.w),
      ),
    );
  }
}
