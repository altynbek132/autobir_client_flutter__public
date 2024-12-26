import 'package:auto_route/auto_route.dart';
import 'package:autobir/core/navigation/app_router.dart';
import 'package:autobir/presentation/_stores/search_filter_store.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:render_metrics/render_metrics.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

class SearchBarWithFilterButton extends StatefulWidget {
  final Color? searchFilterBGColor;
  final SvgPicture? svg;

  const SearchBarWithFilterButton({
    // ignore: unused_element
    super.key,
    this.searchFilterBGColor,
    this.svg,
  });

  @override
  State<SearchBarWithFilterButton> createState() => _SearchBarWithFilterButtonState();
}

class _SearchBarWithFilterButtonState extends State<SearchBarWithFilterButton> {
  final renderManager = RenderParametersManager<dynamic>();
  final renderId = "";

  @override
  void initState() {
    super.initState();
    postFrame().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color white = widget.searchFilterBGColor ?? Colors.white;
    final SvgPicture svg = widget.svg ?? Assets.images.home.searchFilter.svg();

    return Row(
      children: [
        RenderMetricsObject(
          id: renderId,
          manager: renderManager,
          child: TextField(
            readOnly: true,
            onTap: () {
              context.pushRoute(SearchRoute());
            },
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
              hintText: 'Поиск',
              hintStyle: TextStyle(
                color: AppColors.colorFF797979,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none,
              ),
              prefixIconConstraints: BoxConstraints.tight(
                Size(
                  18 + 12.w + 9.w,
                  18,
                ),
              ),
              prefixIcon: Center(child: Assets.images.home.searchNormal.svg()).paddingOnly(
                left: 12.w,
                right: 9.w,
              ),
            ),
          ),
        ).expanded(),
        8.w.widthBox,
        (() {
          final borderRadius = BorderRadius.circular(8);
          final data = renderManager.getRenderData(renderId);
          if (data == null) {
            return 48.w.widthBox;
          }

          final child = InkWell(
            onTap: () async {
              final searchFilterStore = SearchFilterStore();
              context.router.pushAll([
                SearchRoute(searchFilterStore: searchFilterStore),
                SearchFilterRoute(searchFilterStore: searchFilterStore),
              ]);
            },
            child: Ink(
              width: data.height,
              height: data.height,
              decoration: ShapeDecoration(
                color: white,
                shape: RoundedRectangleBorder(borderRadius: borderRadius),
              ),
              child: SizedBox(
                width: 12.r,
                height: 12.r,
                child: Center(child: svg),
              ),
            ),
          );

          return ClipMaterialInk(borderRadius: borderRadius, child: child);
        })(),
      ],
    );
  }
}
