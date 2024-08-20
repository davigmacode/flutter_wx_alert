import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

class WxAlertThemeData extends WxSheetThemeData<WxAlertThemeData> {
  /// Creates a theme data that can be used for [WxAlertTheme].
  const WxAlertThemeData({
    super.curve,
    super.duration,
    super.variant,
    super.size,
    super.severity,
    WxAlertStyle super.style = const WxAlertStyle(),
    WxSheetStyleResolver<WxAlertStyle>? super.styleResolver,
    super.overlay,
    super.feedback,
    super.focusable,
    super.disabled,
    super.inherits,
    super.mouseCursor,
    super.leading,
    super.trailing,
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
    variant,
    size,
    severity,
    style,
    styleResolver,
    overlay,
    feedback,
    focusable,
    disabled,
    inherits,
    mouseCursor,
    leading,
    trailing,
  }) {
    final ancestor = super.copyWith(
      animated: animated,
      curve: curve,
      duration: duration,
      variant: variant,
      size: size,
      severity: severity,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      inherits: inherits,
      mouseCursor: mouseCursor,
      leading: leading,
      trailing: trailing,
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
