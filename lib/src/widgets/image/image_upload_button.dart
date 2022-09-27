import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class ImageUploadButton extends StatelessWidget {
  const ImageUploadButton({
    Key? key,
    this.width,
    this.height,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor,
    required this.onImageSelected,
    this.onError,
    this.icon,
  }) : super(key: key);

  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final Function(File? image) onImageSelected;
  final Function(String message)? onError;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      onTap: () async {
        try {
          final pickedImage = await ImageUtils.pickImage(context);
          onImageSelected(pickedImage);
        } catch (e) {
          Logger.e('ImageUploadButton', e);
          if (onError != null) {
            onError!(e.toString());
          }
        }
      },
      child: Container(
        width: width ?? 150,
        height: height ?? 150,
        decoration: BoxDecoration(
          color: backgroundColor ??
              Theme.of(context).colorScheme.primary.withOpacity(0.3),
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          border: Border.all(
            color: borderColor ?? Theme.of(context).colorScheme.primary,
            width: borderWidth ?? 1.0,
          ),
        ),
        child: Center(
          child: icon ?? const Icon(Icons.add, size: 35),
        ),
      ),
    );
  }
}
