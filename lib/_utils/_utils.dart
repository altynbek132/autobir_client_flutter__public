import 'package:disposing/disposing_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart.dart';

extension DoubleFormatting on double {
  String toFormattedString() {
    if (this == toInt()) {
      return toInt().toString();
    }
    return toStringAsFixed(truncateToDouble() == this ? 1 : 2);
  }
}

extension ObservableValueLogExtension<T> on ObservableValue<T> {
  SyncDisposable logOnChange() {
    if (!kDebugMode) {
      return SyncCallbackDisposable(() {});
    }
    final r = reaction((_) => value, (value) {
      loggerGlobal.d(value);
    });
    return SyncCallbackDisposable(r.call);
  }
}
