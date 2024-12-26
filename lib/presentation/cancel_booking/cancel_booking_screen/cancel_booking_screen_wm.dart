import 'package:auto_route/auto_route.dart';
import 'package:mobx/mobx.dart';
import 'package:utils/utils_dart/loggers/logger_mixin.dart';
import 'package:utils/utils_flutter/utils_flutter.dart';

import 'cancel_booking_screen.dart';

part 'cancel_booking_screen_wm.g.dart';

// @LazySingleton(dispose: disposeCancelBookingScreenWm)
class CancelBookingScreenWm = _CancelBookingScreenWmBase with _$CancelBookingScreenWm;

abstract class _CancelBookingScreenWmBase extends MobxWM<CancelBookingScreen> with Store, LoggerMixin {
  // INIT ---------------------------------------------------------------------

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  // DEPENDENCIES -------------------------------------------------------------

  // FIELDS -------------------------------------------------------------------

  // PROXY --------------------------------------------------------------------

  // OBSERVABLES --------------------------------------------------------------

  @observable
  String? selectedReason;

  @observable
  String otherReason = '';

  // COMPUTED -----------------------------------------------------------------

  @computed
  bool get isOtherReasonSelected => selectedReason == 'Другое';

  @computed
  bool get canConfirm => selectedReason != null && (!isOtherReasonSelected || otherReason.isNotEmpty);

  // STREAM REACTION ----------------------------------------------------------

  // ACTIONS ------------------------------------------------------------------

  @action
  void selectReason(String reason) {
    selectedReason = reason;
  }

  @action
  void setOtherReason(String reason) {
    otherReason = reason;
  }

  // UI -----------------------------------------------------------------------

  Future<void> onConfirmPressed() async {
    if (canConfirm) {
      context.maybePop(isOtherReasonSelected ? otherReason : selectedReason);
      // Handle confirmation logic here
      logger.i('Cancellation confirmed. Reason: ${isOtherReasonSelected ? otherReason : selectedReason}');
      // You might want to call a method to actually cancel the booking or navigate back
    }
  }

  // UTIL METHODS -------------------------------------------------------------

  @override
  void setupLoggers() {
    setupObservableLoggers(
      [
        () => 'Selected Reason: $selectedReason',
        () => 'Other Reason: $otherReason',
        () => 'Can Confirm: $canConfirm',
      ],
      logger,
    );
  }
}
