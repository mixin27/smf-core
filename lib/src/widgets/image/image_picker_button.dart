import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

class ImagePickerButton extends StatelessWidget {
  const ImagePickerButton({
    Key? key,
    this.width,
    this.backgroundColor,
    this.foregroundColor,
    this.contentPadding,
    required this.onImageSelected,
    this.onError,
  }) : super(key: key);

  final double? width;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final Function(File? image) onImageSelected;
  final Function(String message)? onError;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextButton.icon(
        onPressed: () async {
          try {
            final pickedImage = await ImageUtils.pickImage(context);
            onImageSelected(pickedImage);
          } catch (e) {
            Logger.e('ImagePickerButton', e);
            if (onError != null) {
              onError!(e.toString());
            }
          }
        },
        style: ElevatedButton.styleFrom(
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: 20),
          backgroundColor: backgroundColor ??
              Theme.of(context).colorScheme.primary.withOpacity(0.3),
          foregroundColor:
              foregroundColor ?? Theme.of(context).colorScheme.primary,
        ),
        icon: const Icon(Icons.add_a_photo_outlined),
        label: const Text('Add Photo'),
      ),
    );
  }
}
