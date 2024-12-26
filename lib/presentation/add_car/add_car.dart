import 'package:api_client/api_client.dart';
import 'package:auto_route/auto_route.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_utils/text_input_formatter.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'add_car_wm.dart';

@RoutePage()
class AddCarScreen extends ElementaryWidget<AddCarWm> with LoggerMixin {
  AddCarScreen({super.key}) : super((context) => AddCarWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(
            title: 'Добавить автомобиль',
            isLeading: true,
          ),
          body: Form(
            key: wm.formKey,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const ClampingScrollPhysics(),
              children: [
                29.h.heightBox,
                Text(
                  'Тип автомобиля',
                  style: textStyle,
                ).paddingDefault.paddingOnly(bottom: 8.h), //,
                _carTypeDropdownButton(wm).paddingDefault.paddingOnly(bottom: 28.h),
                // BRAND
                Text(
                  'Марка',
                  style: textStyle,
                ).paddingDefault.paddingOnly(bottom: 8.h),
                TextFormField(
                  controller: wm.brandController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: wm.brandFieldValidator,
                  style: textStyle,
                  decoration: _textFieldInputDecoration(hint: 'Toyota'),
                ).paddingDefault.paddingOnly(bottom: 28.h),
                // MODEL
                Text(
                  'Модель',
                  style: textStyle,
                ).paddingDefault.paddingOnly(bottom: 8.h),
                TextFormField(
                  controller: wm.modelController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: wm.modelFieldValidator,
                  style: textStyle,
                  decoration: _textFieldInputDecoration(hint: 'Camry'),
                ).paddingDefault.paddingOnly(bottom: 28.h),
                // YEAR OF ISSUE
                Text(
                  'Год выпуска',
                  style: textStyle,
                ).paddingDefault.paddingOnly(bottom: 8.h),
                TextFormField(
                  controller: wm.yearController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: wm.yearFieldValidator,
                  style: textStyle,
                  decoration: _textFieldInputDecoration(hint: '2017'),
                ).paddingDefault.paddingOnly(bottom: 28.h),
                // LICENSE PLATE
                Text(
                  'Гос. номер',
                  style: textStyle,
                ).paddingDefault.paddingOnly(bottom: 8.h),
                TextFormField(
                  controller: wm.licensePlateController,
                  inputFormatters: [UpperCaseTextFormatter()],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: wm.licensePlateFieldValidator,
                  style: textStyle,
                  decoration: _textFieldInputDecoration(hint: '001 VIP 01'),
                ).paddingDefault.paddingOnly(bottom: 28.h),
              ],
            ),
          ),
          bottomNavigationBar: PinnedBottomButton(
            onPressed: wm.addCar,
            text: 'Подтвердить',
            isLoading: wm.isLoading,
          ),
        );
      },
    );
  }

  DropdownButtonHideUnderline _carTypeDropdownButton(AddCarWm wm) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<int>(
        isExpanded: true,
        hint: Text(
          'Выберите тип автомобиля',
          textAlign: TextAlign.right,
          style: textStyle.copyWith(color: AppColors.colorFF797979),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const SizedBox.shrink(),
        buttonStyleData: ButtonStyleData(
          height: 48.h,
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Colors.black.withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          elevation: 1,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: AppColors.colorFFF6F6F6,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        isDense: false,
        // fixme:
        // menuItemStyleData: MenuItemStyleData(
        //   padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
        // ),
        value: wm.carTypeId,
        onChanged: (newValue) => wm.setCarTypeId(newValue),
        items: carTypeMap.entries
            .map(
              (entry) => DropdownMenuItem<int>(
                value: entry.key,
                child: Text(
                  entry.value.name,
                  style: TextStyle(
                    color: AppColors.colorFF242424,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ),
            )
            .toList(),
        iconStyleData: IconStyleData(
          iconSize: 20.sp,
          icon: Assets.images.filter.arrowDown.svg(
            width: 20.sp,
            height: 20.sp,
          ),
          openMenuIcon: Transform.rotate(
            angle: 3.14,
            child: Assets.images.filter.arrowDown.svg(
              width: 20.sp,
              height: 20.sp,
            ),
          ),
        ),
      ),
    );
  }

  final textStyle = TextStyle(
    color: AppColors.colorFF242424,
    fontSize: 12.sp,
    fontFamily: 'Muller',
    fontWeight: FontWeight.w400,
    height: 1,
  );

  InputDecoration _textFieldInputDecoration({required String hint}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: AppColors.colorFF797979,
        fontSize: 12.sp,
        fontFamily: 'Muller',
        fontWeight: FontWeight.w400,
        height: 1,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 0.5.w,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 0.5.w,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          width: 0.5.w,
          color: Colors.black.withOpacity(0.1),
        ),
      ),
    );
  }
}
