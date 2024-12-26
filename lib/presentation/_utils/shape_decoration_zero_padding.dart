import 'package:flutter/material.dart';

class ShapeDecorationZeroPadding extends ShapeDecoration {
  const ShapeDecorationZeroPadding({required super.shape});

  @override
  EdgeInsetsGeometry get padding => EdgeInsets.zero;
}
