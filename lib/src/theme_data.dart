import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxAlertThemeData extends WxSheetThemeData<WxAlertThemeData> {
  /// Creates a theme data that can be used for [SheetTheme].
  const WxAlertThemeData({
    super.curve,
    super.duration,
    WxAlertStyle super.style = const WxAlertStyle(),
    WxSheetStyleResolver<WxAlertStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
  }) : super(animated: true);

  WxAlertThemeData.from([
    super.other,
    super.fallback = const WxAlertThemeData(),
  ]) : super.from();

  @override
  WxAlertThemeData copyWith({
    animated,
    curve,
    duration,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      inherits: inherits,
      mouseCursor: mouseCursor,
    );
    return WxAlertThemeData.from(ancestor);
  }

  @override
  WxAlertThemeData merge(other) {
    // if null return current object
    if (other == null) return this;

    final ancestor = super.merge(other);
    return WxAlertThemeData.from(ancestor);
  }
}
