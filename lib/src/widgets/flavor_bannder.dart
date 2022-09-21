import 'package:flutter/material.dart';

class FlavorBanner extends StatelessWidget {
  const FlavorBanner({
    super.key,
    required this.child,
    required this.bannerText,
    this.backgroundColor,
    this.foregroundColor,
    this.bannerLocation = BannerLocation.topStart,
  });

  final Widget child;
  final String bannerText;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BannerLocation bannerLocation;

  @override
  Widget build(BuildContext context) {
    return Banner(
      location: bannerLocation,
      message: bannerText,
      color: backgroundColor ?? const Color(0xA0B71C1C),
      textStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 12.0,
        letterSpacing: 1.0,
        color: foregroundColor,
      ),
      textDirection: TextDirection.ltr,
      child: child,
    );
  }
}
