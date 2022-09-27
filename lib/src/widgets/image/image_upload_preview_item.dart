import 'dart:io';

import 'package:flutter/material.dart';

class ImageUploadPreviewItem extends StatelessWidget {
  const ImageUploadPreviewItem({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.fit = BoxFit.fill,
    this.contentPadding,
    required this.onRemove,
  }) : super(key: key);

  final File image;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final BoxFit fit;
  final EdgeInsetsGeometry? contentPadding;
  final Function(File image) onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width ?? 150,
          height: height ?? 150,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: contentPadding,
          decoration: BoxDecoration(
            color: backgroundColor ??
                Theme.of(context).colorScheme.primary.withOpacity(0.3),
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
        ),
        Positioned(
          right: 10,
          top: 5,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
            child: IconButton(
              onPressed: () {
                onRemove(image);
              },
              icon: const Icon(Icons.delete),
            ),
          ),
        ),
      ],
    );
  }
}
