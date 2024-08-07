import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxAlertTheme extends WxSheetTheme<WxAlertThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxSheet]s should look like.
  const WxAlertTheme({
    super.key,
    required super.data,
    required super.child,
  });

  /// Creates an [WxSheetTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxSheetTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxAlertStyle? style,
    WxSheetStyleResolver<WxAlertStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    WxAlertThemeData? data,
    required Widget child,
  }) {
    return WxSheetTheme.merge<WxAlertThemeData>(
      key: key,
      data: data,
      curve: curve,
      duration: duration,
      style: style,
      styleResolver: styleResolver,
      overlay: overlay,
      feedback: feedback,
      focusable: focusable,
      disabled: disabled,
      mouseCursor: mouseCursor,
      child: child,
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.maybeOf(context);
  /// ```
  static WxAlertThemeData? maybeOf(BuildContext context) {
    final parent = WxSheetTheme.maybeOf<WxAlertThemeData>(context);
    return WxAlertThemeData.from(parent);
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxSheetThemeData theme = WxSheetTheme.of(context);
  /// ```
  static WxAlertThemeData of(BuildContext context) {
    final parent = WxAlertTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxAlertThemeAdaptive(context);
  }
}
