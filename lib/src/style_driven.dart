import 'package:flutter/foundation.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'style.dart';

/// Create a [WxAlertStyle] when some events occurs
class WxDrivenAlertStyle extends WxAlertStyle
    with WxDrivenSheetProperty<WxAlertStyle> {
  @override
  final bool? inherits;

  @override
  final WxAlertStyle? focusedStyle;

  @override
  final WxAlertStyle? hoveredStyle;

  @override
  final WxAlertStyle? pressedStyle;

  @override
  final WxAlertStyle? loadingStyle;

  @override
  final WxAlertStyle? disabledStyle;

  /// Create a raw [WxDrivenAlertStyle].
  const WxDrivenAlertStyle({
    super.variant,
    super.size,
    super.severity,
    super.width,
    super.height,
    super.minWidth,
    super.maxWidth,
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
    super.overlayColor,
    super.overlayOpacity,
    super.overlayShape,
    super.overlayExtent,
    super.surfaceTint,
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
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  });

  /// Create a [WxDrivenAlertStyle] with value
  /// from another [WxAlertStyle].
  WxDrivenAlertStyle.fromAncestor(
    super.enabled, {
    this.focusedStyle,
    this.hoveredStyle,
    this.pressedStyle,
    this.loadingStyle,
    this.disabledStyle,
    this.inherits,
  }) : super.from();

  /// Create a [WxDrivenAlertStyle] with value
  /// from another [WxDrivenAlertStyle].
  WxDrivenAlertStyle.from(WxDrivenAlertStyle? super.other)
      : focusedStyle = other?.focusedStyle,
        hoveredStyle = other?.hoveredStyle,
        pressedStyle = other?.pressedStyle,
        loadingStyle = other?.loadingStyle,
        disabledStyle = other?.disabledStyle,
        inherits = other?.inherits,
        super.from();

  /// Create a [WxDrivenAlertStyle] from a resolver callback
  WxDrivenAlertStyle.resolver(
    WxDrivenSheetStyleResolver<WxAlertStyle?> resolver, {
    this.inherits = false,
  })  : focusedStyle = resolver({WxSheetEvent.focused}),
        hoveredStyle = resolver({WxSheetEvent.hovered}),
        pressedStyle = resolver({WxSheetEvent.pressed}),
        loadingStyle = resolver({WxSheetEvent.loading}),
        disabledStyle = resolver({WxSheetEvent.disabled}),
        super.fromAncestor(resolver({}));

  /// Resolves the value for the given set of events
  /// if `value` is an event driven [WxAlertStyle],
  /// otherwise returns the value itself.
  static WxAlertStyle evaluate(
    WxAlertStyle value,
    Set<WxSheetEvent> events,
  ) {
    return WxDrivenSheetStyle.evaluate(value, events);
  }

  @override
  resolveInherits(accumulator, style) {
    return inherits != false
        ? accumulator.merge(style)
        : WxAlertStyle.from(style);
  }

  /// Creates a copy of this [WxDrivenAlertStyle] but with
  /// the given fields replaced with the new values.
  @override
  WxDrivenAlertStyle copyWith({
    direction,
    variant,
    size,
    severity,
    width,
    height,
    minWidth,
    maxWidth,
    minHeight,
    maxHeight,
    margin,
    padding,
    spacing,
    adaptiveSpacing,
    offset,
    scale,
    rotate,
    flipX,
    flipY,
    opacity,
    alignment,
    clipBehavior,
    overlayColor,
    overlayOpacity,
    overlayShape,
    overlayExtent,
    surfaceTint,
    elevationColor,
    elevation,
    tileAlign,
    tileJustify,
    tileWrap,
    textStyle,
    textAlign,
    textSpacing,
    textColor,
    textOverflow,
    textSoftWrap,
    textWidthBasis,
    adaptiveForegroundColor,
    foregroundColor,
    foregroundOpacity,
    foregroundAlpha,
    backgroundColor,
    backgroundOpacity,
    backgroundAlpha,
    borderColor,
    borderOpacity,
    borderAlpha,
    borderWidth,
    borderRadius,
    borderStyle,
    borderOffset,
    border,
    image,
    shadows,
    gradient,
    iconColor,
    iconOpacity,
    iconSize,
    checkmarkColor,
    checkmarkSize,
    checkmarkWeight,
    spinnerColor,
    spinnerBackgroundColor,
    spinnerSize,
    spinnerWidth,
    spinnerRounded,
    titleStyle,
    subtitleStyle,
    titleSize,
    subtitleSize,
    titleColor,
    subtitleColor,
    titleMaxLines,
    subtitleMaxLines,
    titleWeight,
    subtitleWeight,
    bool? inherits,
    WxAlertStyle? focusedStyle,
    WxAlertStyle? hoveredStyle,
    WxAlertStyle? pressedStyle,
    WxAlertStyle? loadingStyle,
    WxAlertStyle? disabledStyle,
  }) {
    final ancestor = super.copyWith(
      direction: direction,
      variant: variant,
      size: size,
      severity: severity,
      width: width,
      height: height,
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
      margin: margin,
      padding: padding,
      spacing: spacing,
      adaptiveSpacing: adaptiveSpacing,
      offset: offset,
      scale: scale,
      rotate: rotate,
      flipX: flipX,
      flipY: flipY,
      opacity: opacity,
      alignment: alignment,
      clipBehavior: clipBehavior,
      overlayColor: overlayColor,
      overlayOpacity: overlayOpacity,
      overlayShape: overlayShape,
      overlayExtent: overlayExtent,
      surfaceTint: surfaceTint,
      elevationColor: elevationColor,
      elevation: elevation,
      tileAlign: tileAlign,
      tileJustify: tileJustify,
      tileWrap: tileWrap,
      textStyle: textStyle,
      textAlign: textAlign,
      textSpacing: textSpacing,
      textColor: textColor,
      textOverflow: textOverflow,
      textSoftWrap: textSoftWrap,
      textWidthBasis: textWidthBasis,
      adaptiveForegroundColor: adaptiveForegroundColor,
      foregroundColor: foregroundColor,
      foregroundOpacity: foregroundOpacity,
      foregroundAlpha: foregroundAlpha,
      backgroundColor: backgroundColor,
      backgroundOpacity: backgroundOpacity,
      backgroundAlpha: backgroundAlpha,
      borderColor: borderColor,
      borderOpacity: borderOpacity,
      borderAlpha: borderAlpha,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderStyle: borderStyle,
      borderOffset: borderOffset,
      border: border,
      image: image,
      shadows: shadows,
      gradient: gradient,
      iconColor: iconColor,
      iconOpacity: iconOpacity,
      iconSize: iconSize,
      checkmarkColor: checkmarkColor,
      checkmarkSize: checkmarkSize,
      checkmarkWeight: checkmarkWeight,
      spinnerColor: spinnerColor,
      spinnerBackgroundColor: spinnerBackgroundColor,
      spinnerSize: spinnerSize,
      spinnerWidth: spinnerWidth,
      spinnerRounded: spinnerRounded,
      titleStyle: titleStyle,
      subtitleStyle: subtitleStyle,
      titleSize: titleSize,
      subtitleSize: subtitleSize,
      titleColor: titleColor,
      subtitleColor: subtitleColor,
      titleMaxLines: titleMaxLines,
      subtitleMaxLines: subtitleMaxLines,
      titleWeight: titleWeight,
      subtitleWeight: subtitleWeight,
    );
    return WxDrivenAlertStyle.fromAncestor(
      ancestor,
      inherits: inherits ?? this.inherits,
      focusedStyle: this.focusedStyle?.merge(focusedStyle) ?? focusedStyle,
      hoveredStyle: this.hoveredStyle?.merge(hoveredStyle) ?? hoveredStyle,
      pressedStyle: this.pressedStyle?.merge(pressedStyle) ?? pressedStyle,
      loadingStyle: this.loadingStyle?.merge(loadingStyle) ?? loadingStyle,
      disabledStyle: this.disabledStyle?.merge(disabledStyle) ?? disabledStyle,
    );
  }

  @override
  WxDrivenAlertStyle merge(other) {
    if (other == null) return this;
    final ancestor = super.merge(other);
    final result = WxDrivenAlertStyle.fromAncestor(
      ancestor,
      inherits: inherits,
      focusedStyle: focusedStyle,
      hoveredStyle: hoveredStyle,
      pressedStyle: pressedStyle,
      disabledStyle: disabledStyle,
    );
    if (other is WxDrivenAlertStyle) {
      return result.copyWith(
        inherits: other.inherits,
        focusedStyle: other.focusedStyle,
        hoveredStyle: other.hoveredStyle,
        pressedStyle: other.pressedStyle,
        disabledStyle: other.disabledStyle,
      );
    }
    if (other is WxDrivenSheetStyle) {
      return result.copyWith(
        inherits: other.inherits,
        focusedStyle: WxAlertStyle.fromAncestor(other.focusedStyle),
        hoveredStyle: WxAlertStyle.fromAncestor(other.hoveredStyle),
        pressedStyle: WxAlertStyle.fromAncestor(other.pressedStyle),
        disabledStyle: WxAlertStyle.fromAncestor(other.disabledStyle),
      );
    }
    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    super.debugFillDrivenStyle(properties);
  }
}
