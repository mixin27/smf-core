import 'dart:io';

import 'package:flutter/material.dart';

class MultiImagesPreview extends StatelessWidget {
  const MultiImagesPreview({
    Key? key,
    required this.images,
    this.width,
    this.height,
    this.borderRadius,
    this.borderWidth,
    this.backgroundColor,
    this.borderColor,
    this.fit = BoxFit.fill,
    this.contentPadding,
  }) : super(key: key);

  final List<File> images;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        images.length,
        (index) {
          final image = images.elementAt(index);
          return Container(
            width: width ?? 150,
            height: height ?? 150,
            padding: contentPadding,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: borderRadius ?? BorderRadius.circular(14),
              border: Border.all(
                color: borderColor ?? Theme.of(context).colorScheme.primary,
                width: borderWidth ?? 1.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.circular(14),
              clipBehavior: Clip.hardEdge,
              child: Image.file(image, fit: fit),
            ),
          );
        },
      ),
    );
  }
}
