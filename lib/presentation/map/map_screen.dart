import 'dart:typed_data';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:autobir/constants.dart';
import 'package:autobir/presentation/_utils/clip_material_ink.dart';
import 'package:autobir/presentation/home/search_bar_with_filter_button.dart';
import 'package:autobir/presentation/map/widgets/map_list_car_wash_card.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:autobir/gen/assets.gen.dart';
import 'package:autobir/presentation/_styles/styles.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platform_info/platform_info.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'map_wm.dart';

@RoutePage()
class MapScreen extends ElementaryWidget<MapWm> with LoggerMixin {
  MapScreen({super.key}) : super((context) => MapWm());

  @override
  Widget build(wm, context) {
    return Observer(
      builder: (context) {
        wm.cluster;
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              if (Platform.I.isMobile)
                YandexMap(
                  rotateGesturesEnabled: false,
                  mapObjects: [wm.cluster].nonNulls.toList(),
                  onMapCreated: wm.onMapCreated,
                )
              else
                Container(
                  color: const Color.fromARGB(255, 149, 192, 233),
                  child: Center(
                    child: const Text('Yandex Map is not supported').setOpacity(opacity: 0.5),
                  ),
                ),
              Positioned(
                top: 68.h,
                left: 24.w,
                right: 24.w,
                child: SearchBarWithFilterButton(
                  svg: Assets.images.map.searchFilter.svg(),
                  searchFilterBGColor: AppColors.colorFF6D48FF,
                ),
              ),
              Positioned(
                bottom: 284.h,
                right: 24.w,
                child: gps(wm),
              ),
              Positioned(
                bottom: 24.h,
                left: 0.w,
                right: 0.w,
                child: list(context, wm),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget list(BuildContext context, MapWm wm) {
    return SizedBox(
      height: 204.h,
      child: ListView.separated(
        itemCount: wm.carWashList.toList().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MapListCarWashCard(
          carWash: wm.carWashList.toList()[index],
        ),
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        separatorBuilder: (context, index) => 16.w.widthBox,
      ),
    );
  }

  ClipMaterialInk gps(MapWm wm) {
    return ClipMaterialInk(
      oval: true,
      child: InkWell(
        onTap: () {
          wm.fetchDevicePosition();
        },
        child: Ink(
          width: 39.r,
          height: 39.r,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.10000000149011612),
              ),
            ),
            shadows: const [
              BoxShadow(
                color: AppColors.color16000000,
                blurRadius: 13.82,
                offset: Offset(0, 3.95),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(child: Assets.images.map.gps.svg()),
        ),
      ),
    );
  }

  static Future<Uint8List> buildClusterAppearance(Cluster cluster) async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    const size = Size(200, 200);
    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final strokePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    const radius = 60.0;

    final textPainter = TextPainter(
      text: TextSpan(
        text: cluster.size.toString(),
        style: const TextStyle(color: Colors.black, fontSize: 50),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final textOffset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    final circleOffset = Offset(size.height / 2, size.width / 2);

    canvas.drawCircle(circleOffset, radius, fillPaint);
    canvas.drawCircle(circleOffset, radius, strokePaint);
    textPainter.paint(canvas, textOffset);

    final image = await recorder.endRecording().toImage(size.width.toInt(), size.height.toInt());
    final pngBytes = await image.toByteData(format: ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }
}
