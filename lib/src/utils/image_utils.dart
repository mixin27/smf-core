import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smf_core/smf_core.dart';

class ImageUtils {
  ImageUtils._();

  /// Get file size as byte, kb and mb
  static String getSize(File image) {
    final bytes = image.readAsBytesSync().lengthInBytes;
    final kb = bytes / 1024;
    final mb = kb / 1024;

    if (bytes < 1024) {
      return '$bytes Bytes';
    } else if (bytes >= 1024 && bytes < 1024000) {
      return '${kb.round()} KB';
    } else if (bytes >= 1024000 && bytes < 1024000000) {
      return '${mb.round()} MB';
    } else {
      return '$bytes Bytes';
    }
  }

  /// Pick [ImageSource].
  static Future<ImageSource?> pickImageSource(BuildContext context) async {
    if (Platform.isIOS) {
      return showCupertinoModalPopup<ImageSource>(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              onPressed: () => Navigator.of(context).pop(ImageSource.camera),
              child: const Text('Camera'),
            ),
            CupertinoActionSheetAction(
              onPressed: () => Navigator.of(context).pop(ImageSource.gallery),
              child: const Text('Gallery'),
            ),
          ],
        ),
      );
    } else {
      return showModalBottomSheet(
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
              onTap: () => Navigator.of(context).pop(ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Gallery'),
              onTap: () => Navigator.of(context).pop(ImageSource.gallery),
            ),
          ],
        ),
      );
    }
  }

  /// Pick single image from [ImageSource].
  static Future<File?> pickImage(
    BuildContext context, {
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
  }) async {
    try {
      final imageSource = await pickImageSource(context);
      if (imageSource == null) return null;

      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(
        source: imageSource,
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        imageQuality: imageQuality,
      );
      if (pickedImage == null) return null;

      final bytes = await pickedImage.length();
      if (bytes.mb > 5) {
        throw Exception("Selected image size cannot be greater than 5 MB");
      }

      final File pickedImageFile = File(pickedImage.path);
      return pickedImageFile;
    } on PlatformException catch (e) {
      Logger.e('ImageUtils', e.message);
      return null;
    }
  }

  /// Pick multiple images.
  static Future<List<File>> pickMultiImage(
    BuildContext context, {
    double? maxWidth,
    double? maxHeight,
    int? imageQuality,
  }) async {
    try {
      final imagePicker = ImagePicker();
      final pickedImages = await imagePicker.pickMultiImage(
        maxHeight: maxHeight,
        maxWidth: maxWidth,
        imageQuality: imageQuality,
      );
      if (pickedImages == null) return [];

      final List<File> pickedImageFiles = [];
      for (var image in pickedImages) {
        pickedImageFiles.add(File(image.path));
      }

      return pickedImageFiles;
    } on PlatformException catch (e) {
      Logger.e('ImageUtils', e.message);
      return [];
    }
  }
}
