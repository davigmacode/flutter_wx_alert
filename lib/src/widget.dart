import 'package:wx_sheet/wx_sheet.dart';
import 'theme.dart';
import 'theme_data.dart';
import 'style_driven.dart';
import 'style.dart';

/// A customizable alert widget for displaying important messages.
///
/// Inherits all the styling and behavior properties from the base class [WxSheet].
/// Additionally, it provides a predefined style based on the current theme
/// through the [WxDrivenAlertStyle] class.
///
/// Renders a sheet with configurable appearance through properties like:
///   - size, margins, padding, and alignment
///   - background and border styling
///   - text styling for title, subtitle, and content
///   - icon and spinner configuration
///   - and more! (refer to [WxSheet] for full list)
class WxAlert extends WxSheet<WxAlertThemeData> {
  /// Creates a new `WxAlert` widget.
  ///
  /// Offers extensive customization options for appearance, behavior, and content.
  /// See individual parameter descriptions for details.
  const WxAlert({
    super.key,
    super.animated,
    super.duration,
    super.curve,
    super.direction,
    super.variant,
    super.size,
    super.severity,
    super.height,
    super.minHeight,
    super.maxHeight,
    super.margin,
    super.padding,
    super.spacing,
    super.adaptiveSpacing,
    super.offset,
    super.scale,
    super.rotate,
    super.flipX,
    super.flipY,
    super.opacity,
    super.alignment,
    super.clipBehavior,
    super.overlay,
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
    super.elevationColor,
    super.elevation,
    super.tileAlign,
    super.tileJustify,
    super.tileWrap,
    super.textStyle,
    super.textAlign,
    super.textSpacing,
    super.textColor,
    super.textOverflow,
    super.textSoftWrap,
    super.textWidthBasis,
    super.adaptiveForegroundColor,
    super.foregroundColor,
    super.foregroundOpacity,
    super.foregroundAlpha,
    super.backgroundColor,
    super.backgroundOpacity,
    super.backgroundAlpha,
    super.borderColor,
    super.borderOpacity,
    super.borderAlpha,
    super.borderWidth,
    super.borderRadius,
    super.borderStyle,
    super.borderOffset,
    super.border,
    super.image,
    super.shadows,
    super.gradient,
    super.iconColor,
    super.iconOpacity,
    super.iconSize,
    super.checkmarkColor,
    super.checkmarkSize,
    super.checkmarkWeight,
    super.checkmarkRounded,
    super.spinnerColor,
    super.spinnerBackgroundColor,
    super.spinnerSize,
    super.spinnerWidth,
    super.spinnerRounded,
    super.titleStyle,
    super.subtitleStyle,
    super.titleSize,
    super.subtitleSize,
    super.titleColor,
    super.subtitleColor,
    super.titleMaxLines,
    super.subtitleMaxLines,
    super.titleWeight,
    super.subtitleWeight,
    super.focusedStyle,
    super.hoveredStyle,
    super.pressedStyle,
    super.loadingStyle,
    super.disabledStyle,
    super.style,
    super.tooltip,
    super.disabled,
    super.loading,
    super.autofocus,
    super.focusNode,
    super.onPressed,
    super.leading,
    super.trailing,
    super.title,
    super.subtitle,
    super.child,
  }) : super.block();

  @override
  WxAlertStyle get effectiveStyle {
    return const WxDrivenAlertStyle().merge(super.effectiveStyle);
  }

  @override
  WxAlertThemeData getTheme(context) {
    return WxAlertTheme.of(context);
  }

  @override
  WxAlertStyle getInheritedStyle(context, inherits) {
    if (inherits) {
      final parentStyle = getParentStyle(context);
      return const WxDrivenAlertStyle()
          .merge(parentStyle)
          .merge(effectiveStyle);
    }
    return effectiveStyle;
  }
}
