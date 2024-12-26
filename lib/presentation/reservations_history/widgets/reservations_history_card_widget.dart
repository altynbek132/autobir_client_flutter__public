import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:autobir/presentation/_widgets/distance_and_location_chip.dart';
import 'package:autobir/presentation/_widgets/text_button_.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class ReservationsHistoryCardWidget extends StatefulWidget {
  const ReservationsHistoryCardWidget({
    super.key,
    required this.reservation,
    required this.cancelReservation,
  });

  final Reservation reservation;
  final Future<void> Function(Reservation reservation) cancelReservation;

  @override
  State<ReservationsHistoryCardWidget> createState() => _ReservationsHistoryCardWidgetState();
}

class _ReservationsHistoryCardWidgetState extends State<ReservationsHistoryCardWidget> {
  bool isCancelLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.5.w,
            color: Colors.black.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.color11000000,
            blurRadius: 194.r,
            offset: Offset(0, 11.h),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // STATUS
          _status().alignAtCenterLeft().paddingOnly(bottom: 14.h),
          // IMAGE, TYPE, TITLE, LOCATION, TIME
          _carWashInfo(),
          if (widget.reservation.status != ReservationStatus.cancelled) ...[
            // ID, DATE, TOTAL
            _summary().paddingOnly(top: 16.h),
            Divider(
              height: 33.h,
              thickness: 0.5.h,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
          switch (widget.reservation.status) {
            ReservationStatus.pending => _cancelButton(context),
            ReservationStatus.confirmed => _cancelButton(context),
            ReservationStatus.completed => _completedButtons(context),
            ReservationStatus.cancelled => const SizedBox.shrink(),
          },
          6.h.heightBox,
        ],
      ),
    );
  }

  Row _completedButtons(BuildContext context) {
    return Row(
      children: [
        TextButton_(
          text: 'Посмотреть отзыв',
          backgroundColor: AppColors.colorFFF6F6F6,
          textStyle: TextStyle(
            color: AppColors.colorFF6D48FF,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
          ).withHeight(16.sp),
        ).expanded(),
        10.widthBox,
        TextButton_(
          onPressed: () {
            context.pushRoute(
              ReceiptRoute(
                reservation: widget.reservation,
              ),
            );
          },
          text: 'Квитанция',
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w500,
          ).withHeight(16.sp),
        ).expanded(),
      ],
    );
  }

  TextButton_ _cancelButton(BuildContext context) {
    return TextButton_(
      onPressed: () async {
        setState(() => isCancelLoading = true);
        await widget.cancelReservation(widget.reservation);
        setState(() => isCancelLoading = false);
      },
      text: 'Отменить',
      isLoading: isCancelLoading,
      loadingSize: 16.sp,
      backgroundColor: AppColors.colorFFF6F6F6,
      textStyle: TextStyle(
        color: AppColors.colorFF6D48FF,
        fontSize: 14.sp,
        fontFamily: 'Muller',
        fontWeight: FontWeight.w500,
      ).withHeight(16.sp),
    );
  }

  Row _carWashInfo() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // IMAGE
        ClipRRect(
          borderRadius: BorderRadius.circular(6.r),
          child: widget.reservation.carWash?.photoUrl == null
              ? Assets.images.preview.moikaImage.image(
                  width: 110.w,
                  height: 115.h,
                )
              : Image.network(
                  widget.reservation.carWash!.photoUrl!,
                  width: 110.w,
                  height: 115.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Assets.images.preview.moikaImage.image(
                      width: 110.w,
                      height: 115.h,
                    );
                  },
                ),
        ),
        12.w.widthBox,
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TYPE
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: ShapeDecoration(
                color: AppColors.colorFFF6F6F6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Text(
                'Автомойка',
                style: TextStyle(
                  color: AppColors.colorFF6D48FF,
                  fontSize: 10.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w400,
                ).withHeight(10.sp),
              ),
            ),
            6.h.heightBox,
            // TITLE
            Text(
              widget.reservation.carWash?.name ?? '',
              maxLines: 3,
              style: TextStyle(
                color: AppColors.colorFF242424,
                fontSize: 15.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w500,
              ).withHeight(15.sp),
            ),
            6.h.heightBox,
            // LOCATION AND TIME
            DistanceAndLocationChip(carWash: widget.reservation.carWash),
          ],
        ).expanded(),
      ],
    );
  }

  Container _status() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: ShapeDecoration(
        color: switch (widget.reservation.status) {
          ReservationStatus.pending => AppColors.color14FFB930,
          ReservationStatus.confirmed => AppColors.color140ABE75,
          ReservationStatus.completed => AppColors.color140ABE75,
          ReservationStatus.cancelled => AppColors.color14EF2C2C,
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(130.r),
        ),
      ),
      child: Text(
        widget.reservation.status.name ?? '-',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: switch (widget.reservation.status) {
            ReservationStatus.pending => AppColors.colorFFFCFCAF23,
            ReservationStatus.confirmed => AppColors.colorFF0ABE75,
            ReservationStatus.completed => AppColors.colorFF0ABE75,
            ReservationStatus.cancelled => AppColors.colorFFEE2C2C,
          },
          fontSize: 12.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
        ).withHeight(12.sp),
      ),
    );
  }

  Row _summary() {
    Widget _buildColumn({required String title, required String value}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
            ).withHeight(12.sp),
          ),
          6.h.heightBox,
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 14.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
            ).withHeight(14.sp),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildColumn(
          title: 'ID заказа',
          value: '#${widget.reservation.id}',
        ),
        _buildColumn(
          title: 'Дата заказа',
          value: dateAndShortMonth(widget.reservation.timeSlot!.startTime),
        ),
        _buildColumn(
          title: 'Сумма (общ.)',
          value: (() {
            final totalPrice = widget.reservation.cleaningOptions.fold(
              0.0,
              (previousValue, e) => previousValue + (e.price ?? 0),
            );
            return '$totalPrice тг';
          })(),
        ),
      ],
    );
  }
}
