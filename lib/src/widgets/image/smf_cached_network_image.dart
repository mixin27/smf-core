import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'smf_image_placeholder.dart';

class SmfCachedNetworkImage extends StatelessWidget {
  const SmfCachedNetworkImage({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.fit,
    this.alignment,
    this.usePlaceholderIfUrlEmpty = true,
    this.radius,
    this.color,
  });

  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final bool usePlaceholderIfUrlEmpty;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return SmfImagePlaceholder(
        height: height,
        width: width,
        fit: fit,
        alignment: alignment,
        radius: radius,
      );
    } else if (url.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: url,
        height: height,
        width: width,
        fit: fit,
        color: color,
        alignment: alignment as Alignment? ?? Alignment.center,
        errorWidget: (_, s, d) => SmfImagePlaceholder(
          height: height,
          width: width,
          fit: fit,
          alignment: alignment,
          radius: radius,
        ),
        placeholder: (_, s) {
          if (!usePlaceholderIfUrlEmpty) return const SizedBox();
          return SmfImagePlaceholder(
            height: height,
            width: width,
            fit: fit,
            alignment: alignment,
            radius: radius,
          );
        },
      );
    } else if (url.startsWith('/data/')) {
      return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 8.0)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.file(
          File(url),
          height: height,
          width: width,
          fit: fit,
          alignment: alignment ?? Alignment.center,
        ),
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 8.0)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset(
          url,
          height: height,
          width: width,
          fit: fit,
          alignment: alignment ?? Alignment.center,
        ),
      );
    }
  }
}
