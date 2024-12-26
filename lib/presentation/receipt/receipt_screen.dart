import 'package:api_client/api_client.dart';
import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/date_formatter_methods.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/dashed_line.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/_widgets/title_value_tile_widget.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key, required this.reservation});

  final Reservation reservation;

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Квитанция'),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          8.h.heightBox,
          Assets.images.receipt.barcode.image().paddingDefault,
          24.h.heightBox,
          ..._mainInfo,
          ..._paymentInvoice,
          ..._total,
          ..._summary,
        ],
      ),
      bottomNavigationBar: PinnedBottomButton(
        text: 'Скачать квитанцию',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Функционал в разработке'),
            ),
          );
        },
      ),
    );
  }

  List<Widget> get _summary {
    final titleStyle = TextStyle(
      color: AppColors.colorFF797979,
      fontSize: 14.sp,
      fontFamily: 'Muller',
      fontWeight: FontWeight.w400,
    ).withHeight(14.sp);
    return [
      Divider(
        height: 49.h,
        thickness: 0.5.h,
        color: Colors.black.withOpacity(0.1),
      ).paddingDefault,
      TitleValueTileWidget(
        title: 'Метод оплаты',
        value: 'Наличными',
        titleStyle: titleStyle,
      ).paddingDefault,
      16.h.heightBox,
      TitleValueTileWidget(
        title: 'Дата создания',
        value: fullDateAndTime(widget.reservation.createdAt),
        titleStyle: titleStyle,
      ).paddingDefault,
      16.h.heightBox,
      TitleValueTileWidget(
        // FIXME: replace with real data
        title: 'Идентификатор транзакции',
        value: '-',
        titleStyle: titleStyle,
        canCopy: true,
      ).paddingDefault,
    ];
  }

  List<Widget> get _total {
    return [
      8.h.heightBox,
      DashedLine(
        height: 0.5.h,
        width: 8.w,
        color: Colors.black.withOpacity(0.1),
      ).paddingSymmetric(horizontal: 24.w),
      24.h.heightBox,
      TitleValueTileWidget(
        title: 'Итого',
        value: (() {
          final total = widget.reservation.cleaningOptions
              .fold(0.0, (previousValue, element) => previousValue + (element.price ?? 0));
          return '$total тг';
        })(),
      ).paddingDefault,
    ];
  }

  List<Widget> get _paymentInvoice {
    if (widget.reservation.cleaningOptions.isEmpty) return [];

    return [
      Divider(
        height: 49.h,
        thickness: 0.5.h,
        color: Colors.black.withOpacity(0.1),
      ).paddingDefault,
      for (final option in widget.reservation.cleaningOptions)
        TitleValueTileWidget(
          title: option.name ?? '-',
          value: '${option.price} тг',
        ).paddingDefault.paddingOnly(bottom: 16.h),
    ];
  }

  List<Widget> get _mainInfo {
    return [
      TitleValueTileWidget(
        title: 'Время бронирования',
        value: fullDateAndTime(widget.reservation.timeSlot!.startTime),
      ).paddingDefault,
      16.h.heightBox,
      TitleValueTileWidget(
        title: 'Авто',
        value: (() {
          final carTypeText = carTypeMap[widget.reservation.car?.carTypeId ?? 0]?.name ?? '-';
          final licensePlate = widget.reservation.car?.licensePlate ?? '-';
          return '$carTypeText | $licensePlate';
        })(),
      ).paddingDefault,
      16.h.heightBox,
      TitleValueTileWidget(
        title: 'Предполагаемая время обслуживания',
        value: (() {
          final startTime = widget.reservation.timeSlot!.startTime;
          final endTime = widget.reservation.timeSlot!.endTime;
          return calculateDuration(startTime, endTime);
        })(),
      ).paddingDefault,
      16.h.heightBox,
      const TitleValueTileWidget(title: 'Тип сервиса', value: 'Автомойка').paddingDefault,
    ];
  }
}
