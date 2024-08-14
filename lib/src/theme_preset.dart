import 'package:flutter/widgets.dart';
import 'package:wx_sheet/wx_sheet.dart';
import 'theme_data.dart';
import 'style_driven.dart';

abstract class WxAlertThemePreset extends WxAlertThemeData
    with WxSheetThemePreset<WxAlertThemeData> {
  @protected
  WxAlertThemePreset(
    this.context, {
    super.curve,
    super.duration,
    super.style,
  });

  @override
  final BuildContext context;

  @override
  get style {
    return const WxDrivenAlertStyle().merge(super.style);
  }

  @override
  WxSheetStyle baseStyle(data) {
    return super.baseStyle(data).copyWith(
          direction: Axis.horizontal,
          textAlign: TextAlign.left,
          tileWrap: false,
          spacing: 15,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
        );
  }
}

class WxAlertThemeAdaptive extends WxAlertThemePreset {
  WxAlertThemeAdaptive(
    super.context, {
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get baseTheme => WxSheetThemeTapAdaptive(context);
}

class WxAlertThemeM2 extends WxAlertThemePreset {
  WxAlertThemeM2(
    super.context, {
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get baseTheme => WxSheetThemeTapM2(context);
}

class WxAlertThemeM3 extends WxAlertThemePreset {
  WxAlertThemeM3(
    super.context, {
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get baseTheme => WxSheetThemeTapM3(context);
}

class WxAlertThemeIOS extends WxAlertThemePreset {
  WxAlertThemeIOS(
    super.context, {
    super.curve,
    super.duration,
    super.style,
  });

  @override
  get baseTheme => WxSheetThemeTapIOS(context);
}
