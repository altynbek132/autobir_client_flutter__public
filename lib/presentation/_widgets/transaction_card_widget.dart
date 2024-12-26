import 'package:autobir/_utils/_utils.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    super.key,
    required this.title,
    required this.amount,
    required this.isOrder,
    required this.date,
    required this.balance,
  });

  final String title;
  final double amount;
  final bool isOrder;
  final String date;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.5.w,
            color: Colors.black.withOpacity(0.10000000149011612),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.colorFF242424,
                  fontSize: 14.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                ).withHeight(14.sp),
              ).expanded(),
              8.w.widthBox,
              Text(
                '${isOrder ? '-' : '+'} ${amount.toFormattedString()} тг',
                style: TextStyle(
                  color: isOrder ? AppColors.colorFFFF0A0A : AppColors.colorFF01AC66,
                  fontSize: 14.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                ).withHeight(14.sp),
              ),
            ],
          ),
          8.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 12.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w400,
                ).withHeight(12.sp),
              ).expanded(),
              8.w.widthBox,
              Text(
                balance,
                style: TextStyle(
                  color: AppColors.colorFF797979,
                  fontSize: 12.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w400,
                ).withHeight(12.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
