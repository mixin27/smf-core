import 'dart:io';

import 'package:flutter_native_image/flutter_native_image.dart';

/// Utility functions for images croping, compressing, etc.
class ImageUtils {
  ImageUtils._();

  /// Compress an image
  ///
  /// Compresses the given [image].
  /// [percentage] controls by how much the image should be resized. (0-100)
  /// [quality] controls how strong the compression should be. (0-100)
  /// Use [targetWidth] and [targetHeight] to resize the image for a specific
  /// target size.
  static Future<File> compressImage({
    required File image,
    int quality = 70,
    int percentage = 70,
    int targetWidth = 0,
    int targetHeight = 0,
  }) async {
    final compressedFile = await FlutterNativeImage.compressImage(
      image.absolute.path,
      percentage: percentage,
      quality: quality,
      targetWidth: targetWidth,
      targetHeight: targetHeight,
    );

    return compressedFile;
  }

  /// Gets the properties of an image from an image given the [image]
  /// and compress an [image] according to [targetWidth] and [targetHeight].
  static Future<File> resizeImage({
    required File image,
    int quality = 80,
    int targeWidth = 600,
    int targetHeight = 300,
  }) async {
    final ImageProperties properties =
        await FlutterNativeImage.getImageProperties(image.path);

    final compressedFile = await FlutterNativeImage.compressImage(
      image.absolute.path,
      quality: quality,
      targetHeight: (properties.height! * 600 / properties.width!).round(),
      targetWidth: targeWidth,
    );

    return compressedFile;
  }

  /// Crops an image
  ///
  /// Crops the given [image].
  /// [originX] and [originY] control from where the image should be cropped.
  /// [width] and [height] control how the image is being cropped.
  static Future<File> cropImage({
    required File image,
    required int originX,
    required int originY,
    required int width,
    required int height,
  }) async {
    final compressedFile = await FlutterNativeImage.cropImage(
      image.absolute.path,
      originX,
      originY,
      width,
      height,
    );

    return compressedFile;
  }
}
