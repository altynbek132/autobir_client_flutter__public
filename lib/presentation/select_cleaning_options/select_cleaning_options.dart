import 'package:auto_route/auto_route.dart';
import 'package:autobir/presentation/select_cleaning_options/widgets/cleaning_option_tile_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/_widgets/pinned_bottom_button.dart';
import 'package:autobir/presentation/_widgets/custom_app_bar.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';

import 'select_cleaning_options_wm.dart';

@RoutePage()
class SelectCleaningOptionsScreen extends ElementaryWidget<SelectCleaningOptionsWm> with LoggerMixin {
  SelectCleaningOptionsScreen({super.key}) : super((context) => SelectCleaningOptionsWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        wm.selectedCleaningOptions.toList();
        wm.cleaningOptions.toList();
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBar(
            title: 'Услуги',
            isLeading: true,
          ),
          body: switch (wm.state) {
            SelectCleaningOptionsState.loading => const CircularProgressIndicator().alignAtCenter(),
            SelectCleaningOptionsState.error => const Text('Ошибка').alignAtCenter(),
            SelectCleaningOptionsState.success => ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: wm.cleaningOptions.length,
                itemBuilder: (context, index) {
                  final option = wm.cleaningOptions.elementAt(index);
                  return ClipMaterialInk(
                    borderRadius: BorderRadius.circular(12.r),
                    child: InkWell(
                      onTap: () => wm.onCleaningOptionTap(option),
                      child: CleaningOptionTileWidget(
                        cleaningOption: option,
                        isSelected: wm.selectedCleaningOptions.contains(option),
                      ),
                    ),
                  ).paddingLTRB(24.w, index == 0 ? 8.h : 0, 24.w, 16.w);
                },
              ),
          },
          bottomNavigationBar: PinnedBottomButton(
            onPressed: wm.onProceedPressed,
            text: 'Продолжить',
          ),
        );
      },
    );
  }
}
