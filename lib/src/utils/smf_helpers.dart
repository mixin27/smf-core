import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

/// Convert `null` value from [Object] to `empty` string.
String stringFromJson(Object? json) => (json as String?) ?? '';

/// Convert `null` value from [Object] to `0`.
num numFromJson(Object? json) => (json as num?) ?? 0;

/// Decode to json `2nd` time
/// because consuming `SOAP` api need to convert for second time.
T nextDecode<T>(dynamic json, String key) => jsonDecode(json[key]) as T;

/// Convert `data` of [Response] to [T]
T responseData<T>(Response<dynamic> response) => response.data as T;

/// Launch [Uri] in `Browser`.
Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView`.
Future<void> launchInAppWebView(
  Uri url, {
  Map<String, String> headers = const <String, String>{},
}) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: WebViewConfiguration(
      // Additional headers to pass in the load request.
      headers: headers,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView` withoud `javascript`.
Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
      enableJavaScript: false,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch [Uri] in `InAppWebView` withoud `DOM Storage`.
Future<void> launchInWebViewWithoutDomStorage(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
      enableDomStorage: false,
    ),
  )) {
    throw 'Could not launch $url';
  }
}

/// Launch universal [Uri] link in `iOS`.
Future<void> launchUniversalLinkIos(Uri url) async {
  final bool nativeAppLaunchSucceeded = await launchUrl(
    url,
    mode: LaunchMode.externalNonBrowserApplication,
  );
  if (!nativeAppLaunchSucceeded) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    );
  }
}

/// APIs utilities.
class ApiUtils {
  ApiUtils._();

  static const String keyAccept = 'Accept';
  static const String keyContentType = 'Content-type';
  static const String keyAuthorization = 'Authorization';

  static const String formUrlEncoded = 'application/x-www-form-urlencoded';
  static const String applicationJson = 'application/json';
  static const String textXml = 'text/xml; charset=utf-8';

  // APIs response keys
  static const String keyResponseInfo = 'ResponseInfo';
  static const String keyResponseData = 'ResponseData';

  static _Status get status => _Status._();
  static _Message get messages => _Message._();
}

/// ResponseInfo status
class _Status {
  _Status._();

  final String ok = '0';
  final String error = '107';
}

/// APIs messages.
class _Message {
  _Message._();

  final String unknownError = 'Unknown Error';
  final String connectionProblem = 'Connection Problem';
  final String success = 'Success';
  final String error = 'Error';
  final String failed = 'Failed';
}

/// Utility functions for [DateTime]
class DateTimeUtil {
  DateTimeUtil._();

  /// Convert [date] to [String] according to [pattern].
  static String getFormattedDateString(
    DateTime date, {
    String pattern = 'dd-MM-yyyy',
  }) {
    final formatter = DateFormat(pattern);
    return formatter.format(date);
  }

  /// Find the first date of the week which contains the provided date.
  ///
  /// Assume `Monday` is the first day of the week and
  /// `Sunday` is the last day of the week
  static DateTime findFirstDateOfTheWeek(DateTime dateTime) =>
      dateTime.subtract(Duration(days: dateTime.weekday - 1));

  /// Find last date of the week which contains provided date.
  ///
  /// Assume `Monday` is the first day of the week and
  /// `Sunday` is the last day of the week
  static DateTime findLastDateOfTheWeek(DateTime dateTime) =>
      dateTime.add(Duration(days: DateTime.daysPerWeek - dateTime.weekday));

  /// Find first date of previous week using a date in current week.
  /// [dateTime] A date in current week.
  static DateTime findFirstDateOfPreviousWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfLastWeek =
        dateTime.subtract(const Duration(days: 7));
    return findFirstDateOfTheWeek(sameWeekDayOfLastWeek);
  }

  /// Find last date of previous week using a date in current week.
  /// [dateTime] A date in current week.
  static DateTime findLastDateOfPreviousWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfLastWeek =
        dateTime.subtract(const Duration(days: 7));
    return findLastDateOfTheWeek(sameWeekDayOfLastWeek);
  }

  /// Find first date of next week using a date in current week.
  /// [dateTime] A date in current week.
  static DateTime findFirstDateOfNextWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfNextWeek =
        dateTime.add(const Duration(days: 7));
    return findFirstDateOfTheWeek(sameWeekDayOfNextWeek);
  }

  /// Find last date of next week using a date in current week.
  /// [dateTime] A date in current week.
  static DateTime findLastDateOfNextWeek(DateTime dateTime) {
    final DateTime sameWeekDayOfNextWeek =
        dateTime.add(const Duration(days: 7));
    return findLastDateOfTheWeek(sameWeekDayOfNextWeek);
  }

  static DateTime getLastMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month - 1, dateTime.day);

  static DateTime findFirstDateOfTheMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month, 1);

  static DateTime findLastDateOfTheMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month + 1, 0);

  static DateTime findFirstDateOfPreviousMonth(DateTime dateTime) {
    final lastMonth = getLastMonth(dateTime);
    return findFirstDateOfTheMonth(lastMonth);
  }

  static DateTime findLastDateOfPreviousMonth(DateTime dateTime) {
    final lastMonth = getLastMonth(dateTime);
    return findLastDateOfTheMonth(lastMonth);
  }
}

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
