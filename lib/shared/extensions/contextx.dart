import 'package:flutter/material.dart';

/// Extensions for [BuildContext].
extension BuildContextX on BuildContext {
  /// Get [MediaQueryData] of widget on specific [BuildContext].
  MediaQueryData get mq => MediaQuery.of(this);

  /// Get the [Size] of layout on specific [BuildContext].
  Size get mqSize => mq.size;

  /// Get the width of layout on specific [BuildContext].
  double get mqWidth => mqSize.width;

  /// Get the height of layout on specific [BuildContext].
  double get mqHeight => mqSize.height;

  /// Get the `top` safearea padding on specific [BuildContext].
  double get safePaddingTop => mq.padding.top;

  /// Get the `bottom` safearea padding on specific [BuildContext].
  double get safePaddingBottom => mq.padding.bottom;
}
