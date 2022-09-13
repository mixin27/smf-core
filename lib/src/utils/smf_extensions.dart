import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smf_core/smf_core.dart';
import 'package:xml/xml.dart' as xml;

/// Extensions for nullable [String].
extension NullableStringX on String? {
  String validate({String value = ''}) {
    if (isEmptyOrNull) {
      return value;
    } else {
      return this!;
    }
  }

  /// Returns true if given String is null or isEmpty
  bool get isEmptyOrNull =>
      this == null ||
      (this != null && this!.isEmpty) ||
      (this != null && this! == 'null');

  DateTime? toDateTime() {
    if (isEmptyOrNull) return null;
    try {
      return DateTime.parse(this!);
    } on FormatException catch (e) {
      Logger.e('StringX', 'Cannot parse $this to DateTime. $e');
      return null;
    }
  }
}

/// Extensions for [String].
extension StringX on String {
  /// Convert [String] to [XmlDocument]
  xml.XmlDocument? get asXmlDocument {
    try {
      return xml.XmlDocument.parse(this);
    } on xml.XmlParserException catch (e) {
      if (kDebugMode) {
        print('XmlParserException: ${e.message}');
      }
      return null;
    }
  }

  /// [String] value of [XmlDocument]
  ///
  /// Return the concatenated text of this node and all its descendants,
  /// for [XmlData] nodes return the textual value of the node.
  String get xmlToText => asXmlDocument?.text ?? '';

  /// Parses the xml string and returns the resulting Json object.
  dynamic get xmlToJson => jsonDecode(xmlToText);

  /// [String] to [num].
  num? get valNum => num.tryParse(this);

  /// [String] to [int].
  int? get valInt => int.tryParse(this);

  /// [String] to [double].
  double? get valDouble => double.tryParse(this);

  /// Check two strings are equal.
  bool areTheSame(String other) =>
      trim().toLowerCase() == other.trim().toLowerCase();

  /// [String] to [DateTime?]
  DateTime? toDateTime() {
    try {
      return DateTime.parse(this);
    } on FormatException catch (e) {
      Logger.e('StringX', 'Cannot parse $this to DateTime. $e');
      return null;
    }
  }

  /// [String] to formatted [DateTime]
  String toFormattedDateTime({
    bool addJM = false,
  }) {
    final dateTime = toDateTime();

    if (dateTime == null) return this;

    final formattedDateTime = addJM
        ? DateFormat.yMMMd().add_jm().format(dateTime)
        : DateFormat.yMMMd().format(dateTime);
    return formattedDateTime;
  }

  /// Remove every `,` from [String]
  String get withoutComma => replaceAll(',', '');

  /// Format [int] value of [String] with thousand separator `,`.
  String get withCommaSeparated {
    var formatter = NumberFormat('#,##0,000');

    final value = valInt;

    if (value == null) return '0';

    if (value < 1000) {
      return '$value';
    } else {
      return formatter.format(value);
    }
  }
}

/// Extensions for nullable [int].
extension NulluableIntX on int? {
  int validate({int value = 0}) {
    return this ?? value;
  }
}

/// Extensions for [int].
extension IntX on int {
  /// [double] `bytes` value of [int] `bytes`.
  double get bytes => toDouble();

  /// Killobytes of a given [bytes].
  double get kb => bytes / 1024;

  /// Megabytes of a given [bytes].
  double get mb => kb / 1024;

  /// Giggabytes of a given [bytes].
  double get gb => mb / 1024;
}

/// Extensions for nullable [bool].
extension NullableBoolX on bool? {
  bool validate({bool value = false}) => this ?? value;
}

/// Extensions for nullable [double].
extension NullableDoubleX on double? {
  double validate({double value = 0.0}) => this ?? value;
}

/// Extensions for [BuildContext].
extension BuildContextX on BuildContext {
  /// Get [MediaQueryData] of widget on specific [BuildContext].
  MediaQueryData get mq => MediaQuery.of(this);

  /// Get the [Size] of layout on specific [BuildContext].
  Size get mqSize => mq.size;

  /// Get the width of layout on specific [BuildContext].
  double get mqWidth => mqSize.width;

  /// Get the height of layout on specific [BuildContext].
  double get mqHeight => mqSize.height;

  /// Get the `top` safearea padding on specific [BuildContext].
  double get safePaddingTop => mq.padding.top;

  /// Get the `bottom` safearea padding on specific [BuildContext].
  double get safePaddingBottom => mq.padding.bottom;
}

/// Utilitity extensions for [DateTime]
extension DateTimeX on DateTime {
  /// Convert [DateTime] to formatted string.
  ///
  /// **Pattern** options to format the date.
  /// ```dart
  /// DAY                          d
  /// WEEKDAY                      EEEE
  /// ABBR_WEEKDAY                 E
  /// ABBR_STANDALONE_MONTH        LLL
  /// STANDALONE_MONTH             LLLL
  /// NUM_MONTH                    M
  /// NUM_MONTH_DAY                Md
  /// NUM_MONTH_WEEKDAY_DAY        MEd
  /// ABBR_MONTH                   MMM
  /// ABBR_MONTH_DAY               MMMd
  /// ABBR_MONTH_WEEKDAY_DAY       MMMEd
  /// MONTH                        MMMM
  /// MONTH_DAY                    MMMMd
  /// MONTH_WEEKDAY_DAY            MMMMEEEEd
  /// ABBR_QUARTER                 QQQ
  /// QUARTER                      QQQQ
  /// YEAR                         y
  /// YEAR_NUM_MONTH               yM
  /// YEAR_NUM_MONTH_DAY           yMd
  /// YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
  /// YEAR_ABBR_MONTH              yMMM
  /// YEAR_ABBR_MONTH_DAY          yMMMd
  /// YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
  /// YEAR_MONTH                   yMMMM
  /// YEAR_MONTH_DAY               yMMMMd
  /// YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
  /// YEAR_ABBR_QUARTER            yQQQ
  /// YEAR_QUARTER                 yQQQQ
  /// HOUR24                       H
  /// HOUR24_MINUTE                Hm
  /// HOUR24_MINUTE_SECOND         Hms
  /// HOUR                         j
  /// HOUR_MINUTE                  jm
  /// HOUR_MINUTE_SECOND           jms
  /// HOUR_MINUTE_GENERIC_TZ       jmv
  /// HOUR_MINUTE_TZ               jmz
  /// HOUR_GENERIC_TZ              jv
  /// HOUR_TZ                      jz
  /// MINUTE                       m
  /// MINUTE_SECOND                ms
  /// SECOND                       s
  /// ```
  String toFormattedString([String pattern = 'dd/MM/yyyy']) {
    final formatter = DateFormat(pattern);
    return formatter.format(this);
  }
}

/// Extensions of [DioError].
extension DioErrorX on DioError {
  /// Check [DioError] is [SocketException] and [DioErrorType.other].
  /// If result is `true`, it can be no connection error.
  ///
  /// Return `true` when the condition is true.
  bool get isNoConnectionError {
    return type == DioErrorType.other && error is SocketException;
  }
}
