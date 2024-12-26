import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

class KeyboardPadding extends StatelessWidget {
  const KeyboardPadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: 300.milliseconds,
      height: context.mqViewInsets.bottom,
      curve: Curves.easeInOut,
    );
  }
}
