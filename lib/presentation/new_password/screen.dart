import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:autobir/presentation/_widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:autobir/presentation/_widgets/text_button_.dart';

@RoutePage()
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: ''),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          16.h.heightBox,
          Text(
            'Новый пароль',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF242424,
              fontSize: 24.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w500,
              height: 1,
            ),
          ),
          16.h.heightBox,
          Text(
            'Ваш новый пароль должен отличаться от ранее использовавшихся паролей',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.colorFF797979,
              fontSize: 12.sp,
              fontFamily: 'Muller',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
          64.h.heightBox,
          const PasswordField(
            label: 'Пароль',
          ),
          24.h.heightBox,
          const PasswordField(
            label: 'Подтвердите пароль',
          ),
          48.h.heightBox,
          TextButton_(
            onPressed: () {
              // final storage = GetIt.I.get<KeyValueStorageService>();
              // storage.setClientId(true);

              // context.router.replaceAll([const HomeRoute()]);
            },
            text: 'Создать новый пароль',
          ).paddingDefault,
        ],
      ),
    );
  }
}
