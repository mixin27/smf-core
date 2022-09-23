import 'package:flutter/material.dart';

class SmfImagePlaceholder extends StatelessWidget {
  const SmfImagePlaceholder({
    super.key,
    this.assetImageUrl,
    this.height,
    this.width,
    this.fit,
    this.alignment,
    this.radius,
  });

  final String? assetImageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.all(Radius.circular(radius ?? 8.0)),
      child: Image.asset(
        assetImageUrl ?? 'assets/images/placeholder.jpg',
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        alignment: alignment ?? Alignment.center,
      ),
    );
  }
}
