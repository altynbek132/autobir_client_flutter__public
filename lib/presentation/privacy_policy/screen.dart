import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:autobir/presentation/_utils/padding_default.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

@RoutePage()
class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    final paragraphTextStyle = TextStyle(
      color: AppColors.colorFF797979,
      fontSize: 12.sp,
      fontFamily: 'Muller',
      fontWeight: FontWeight.w400,
    ).withHeight(12.sp);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Политика конфиденциальности',
        isLeading: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          ..._cancellationPolicy(paragraphTextStyle),
          12.h.heightBox,
          ..._termsAndConditions(paragraphTextStyle),
        ],
      ),
    );
  }

  List<Widget> _termsAndConditions(TextStyle paragraphTextStyle) {
    return [
      Text(
        'Правила и условия',
        style: TextStyle(
          color: AppColors.colorFF6D48FF,
          fontSize: 15.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
        ).withHeight(15.sp),
      ).paddingDefault,
      6.h.heightBox,
      RichText(
        text: TextSpan(
          children: [
            // paragraph 1
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            _spaceBetweenParagraphs(),
            // paragraph 2
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            TextSpan(
              text: '\n\n',
              style: TextStyle(
                fontSize: 8.sp,
              ).withHeight(8.sp),
            ),
            // paragraph 3
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            TextSpan(
              text: '\n\n',
              style: TextStyle(
                fontSize: 8.sp,
              ).withHeight(8.sp),
            ),
            // paragraph 4
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            TextSpan(
              text: '\n\n',
              style: TextStyle(
                fontSize: 8.sp,
              ).withHeight(8.sp),
            ),
            // paragraph 5
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            TextSpan(
              text: '\n\n',
              style: TextStyle(
                fontSize: 8.sp,
              ).withHeight(8.sp),
            ),
            // paragraph 6
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              style: paragraphTextStyle,
            ),
          ],
        ),
      ).paddingDefault,
    ];
  }

  List<Widget> _cancellationPolicy(TextStyle paragraphTextStyle) {
    return [
      8.h.heightBox,
      Text(
        'Политика отмены бронирования',
        style: TextStyle(
          color: AppColors.colorFF6D48FF,
          fontSize: 15.sp,
          fontFamily: 'Muller',
          fontWeight: FontWeight.w500,
        ).withHeight(15.sp),
      ).paddingDefault,
      6.h.heightBox,
      RichText(
        text: TextSpan(
          children: [
            // paragraph 1
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: paragraphTextStyle,
            ),
            // space between paragraphs
            _spaceBetweenParagraphs(height: 6),
            // paragraph 2
            TextSpan(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              style: TextStyle(
                color: AppColors.colorFF797979,
                fontSize: 12.sp,
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
              ).withHeight(18.sp),
            ),
          ],
        ),
      ).paddingDefault,
    ];
  }

  TextSpan _spaceBetweenParagraphs({double height = 8}) {
    return TextSpan(
      text: '\n\n',
      style: TextStyle(
        fontSize: height.sp,
      ).withHeight(height.sp),
    );
  }
}
