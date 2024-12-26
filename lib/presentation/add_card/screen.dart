import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/custom_checkbox.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Добавить карту',
        isLeading: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          8.h.heightBox,
          _cardWidget().paddingDefault,
          26.h.heightBox,
          _textFieldWithLabelText('Имя владельца карты', 'Введите имя владельца карты').paddingDefault,
          20.h.heightBox,
          _textFieldWithLabelText('Номер карты', '4716 9627 1635 8047').paddingDefault,
          20.h.heightBox,
          Row(
            children: [
              _textFieldWithLabelText('Срок действия', 'MM/YY').expanded(),
              15.w.widthBox,
              _textFieldWithLabelText('CVV', 'XXX').expanded(),
            ],
          ).paddingDefault,
          24.h.heightBox,
          _saveCardCheckbox().paddingDefault,
        ],
      ),
      bottomNavigationBar: PinnedBottomButton(
        onPressed: () {
          context.maybePop();
        },
        text: 'Добавить карту',
      ),
    );
  }

  Row _saveCardCheckbox() {
    return Row(
      children: [
        CustomCheckbox(
          isChecked: true,
          toggleCheckbox: () {},
        ),
        8.w.widthBox,
        Text(
          'Сохранить карту',
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 14.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w400,
          ).withHeight(14.sp),
        ),
      ],
    );
  }

  Column _textFieldWithLabelText(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 12.sp,
            fontFamily: 'Muller',
            fontWeight: FontWeight.w400,
          ).withHeight(12.sp),
        ),
        8.h.heightBox,
        TextField(
          style: TextStyle(
            color: AppColors.colorFF242424,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 18.w),
            hintText: hint,
            hintStyle: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: AppColors.colorFFF6F6F6,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Stack _cardWidget() {
    return Stack(
      children: [
        Container(
          height: 207.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.colorFF6D48FF,
            image: DecorationImage(
              image: Assets.images.addCard.noise.image().image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Transform.translate(
            offset: Offset(100.w, -94.h),
            child: Assets.images.addCard.circleFull.svg(
              width: 233.w,
              height: 233.h,
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Transform.translate(
            offset: Offset(6.w, -96.h),
            child: Assets.images.addCard.circleFull.svg(
              width: 233.w,
              height: 233.h,
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          right: 26.w,
          child: Assets.images.addCard.visa.svg(
            width: 44.w,
            height: 14.h,
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 26.w,
          child: Assets.images.addCard.chip.svg(
            width: 34.w,
            height: 26.h,
          ),
        ),
        Positioned(
          left: 20.w,
          bottom: 29.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4716 9627 1635 8047',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontFamily: 'Muller',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              22.h.heightBox,
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя владельца карты',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontFamily: 'Muller',
                          fontWeight: FontWeight.w300,
                          height: 1,
                        ),
                      ),
                      4.h.heightBox,
                      Text(
                        'Esther Howard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'Muller',
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  24.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Срок действия',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontFamily: 'Muller',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                      4.h.heightBox,
                      Text(
                        '02/30',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: 'Muller',
                          fontWeight: FontWeight.w500,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
