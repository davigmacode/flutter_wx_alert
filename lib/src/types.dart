import 'package:wx_sheet/wx_sheet.dart';

/// A class representing the different variants in a alert can have.
class WxAlertVariant extends WxSheetVariant {
  /// Creates a new instance of `WxAlertVariant` with the provided value.
  const WxAlertVariant(super.value);

  /// A constant variant representing textual content.
  static const text = WxAlertVariant('text');

  /// A constant variant representing tonal variations.
  static const tonal = WxAlertVariant('tonal');

  /// A constant variant representing elevated content.
  static const elevated = WxAlertVariant('elevated');

  /// A constant variant representing filled content.
  static const filled = WxAlertVariant('filled');

  /// A constant variant representing outlined content.
  static const outlined = WxAlertVariant('outlined');

  /// A constant variant representing gradient variation.
  static const gradient = WxSheetVariant('gradient');

  /// An undefined constant variant.
  static const undefined = WxSheetVariant('undefined');
}

/// Represents the different sizes available
/// for a alert in the widgetarian platform.
class WxAlertSize extends WxSheetSize {
  /// Creates a new `WxAlertSize` instance.
  const WxAlertSize(super.value);

  /// Represents the tiny alert size.
  static const tiny = WxAlertSize('tiny');

  /// Represents the small alert size.
  static const small = WxAlertSize('small');

  /// Represents the medium alert size.
  static const medium = WxAlertSize('medium');

  /// Represents the large alert size.
  static const large = WxAlertSize('large');

  /// Represents the huge alert size.
  static const huge = WxAlertSize('huge');

  /// An undefined constant size.
  static const undefined = WxSheetSize('undefined');
}
