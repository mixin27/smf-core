import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// Screen size configuration.
///
/// Usage:
/// ```dart
/// class SplashScreen extends StatelessWidget {
///  @override
///  Widget build(BuildContext context) {
///    // You have to call it on your starting screen
///    SizeConfig().init(context);
///    return Scaffold(
///      body: Container(
///       width: getProportionateScreenWidth(80),
///       height: getProportionateScreenHeight(80),
///      ),
///    );
///  }
///}
/// ```
///
/// Refrence https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/lib/size_config.dart
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

/// Application layout config
///
/// Usage:
/// ```dart
/// // For horizontal
/// AppLayout.getWidth(20);
///
/// // For vertical
/// AppLayout.getHeight(20);
/// ```
class ALC {
  ALC._();

  ///The number of device pixels for each logical pixel.
  static double get pixelRatio => ui.window.devicePixelRatio;

  static Size get size => ui.window.physicalSize / pixelRatio;

  ///The horizontal extent of this size.
  static double get width => size.width;

  ///The vertical extent of this size
  static double get height => size.height;

  /// Get the proportionate height as per screen size.
  ///
  /// If screen height is `640px`, [pixels] is `20px`,
  /// `y` = `640 / 20` = `32`,
  ///
  /// Return `640 / 32` = `20`.
  static double getHeight(double pixels) {
    return (pixels / height) * height;
  }

  /// Get the proportionate width as per screen size.
  ///
  /// If screen height is `320px`, [pixels] is `20px`,
  /// `y` = `320 / 20` = `16`,
  ///
  /// Return `640 / 16` = `20`.
  static double getWidth(double pixels) {
    return (pixels / width) * width;
  }
}
