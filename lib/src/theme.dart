import 'package:flutter/material.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'theme_preset.dart';
import 'style.dart';

class WxAlertTheme extends WxSheetTheme<WxAlertThemeData> {
  /// Creates a theme that controls
  /// how descendant [WxAlert]s should look like.
  const WxAlertTheme({
    super.key,
    required WxAlertThemeData super.data,
    required super.child,
  });

  /// Creates an [WxAlertTheme] that controls the style of
  /// descendant widgets, and merges in the current [WxAlertTheme], if any.
  ///
  /// The [style] and [child] arguments must not be null.
  static Widget merge({
    Key? key,
    Curve? curve,
    Duration? duration,
    WxSheetVariant? variant,
    WxSheetSize? size,
    Color? severity,
    WxAlertStyle? style,
    WxSheetStyleResolver<WxAlertStyle>? styleResolver,
    bool? overlay,
    bool? feedback,
    bool? focusable,
    bool? disabled,
    MouseCursor? mouseCursor,
    Widget? leading,
    Widget? trailing,
    WxAlertThemeData? data,
    required Widget child,
  }) {
    return Builder(
      builder: (BuildContext context) {
        final parent = WxAlertTheme.of(context);
        return WxAlertTheme(
          key: key,
          data: parent.merge(data).copyWith(
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
                mouseCursor: mouseCursor,
                leading: leading,
                trailing: trailing,
              ),
          child: child,
        );
      },
    );
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxAlertThemeData theme = WxAlertTheme.maybeOf(context);
  /// ```
  static WxAlertThemeData? maybeOf(BuildContext context) {
    final parentTheme =
        context.dependOnInheritedWidgetOfExactType<WxAlertTheme>();
    if (parentTheme != null) {
      return WxAlertThemeData.from(parentTheme.data);
    }

    final globalTheme = Theme.of(context).extension<WxAlertThemeData>();
    return globalTheme;
  }

  /// The [data] from the closest instance of
  /// this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// WxAlertThemeData theme = WxAlertTheme.of(context);
  /// ```
  static WxAlertThemeData of(BuildContext context) {
    final parent = WxAlertTheme.maybeOf(context);
    if (parent != null) return parent;

    return WxAlertThemeAdaptive(context);
  }
}
