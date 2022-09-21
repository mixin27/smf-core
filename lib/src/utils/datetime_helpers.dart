import 'package:intl/intl.dart';

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

  /// Get last month from a date.
  static DateTime getLastMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month - 1, dateTime.day);

  /// Find first date of month from a date.
  static DateTime findFirstDateOfTheMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month, 1);

  /// Find last date of month from a date.
  static DateTime findLastDateOfTheMonth(DateTime dateTime) =>
      DateTime(dateTime.year, dateTime.month + 1, 0);

  /// Find first date of previous month from a date.
  static DateTime findFirstDateOfPreviousMonth(DateTime dateTime) {
    final lastMonth = getLastMonth(dateTime);
    return findFirstDateOfTheMonth(lastMonth);
  }

  /// Find last date of previous month from a date.
  static DateTime findLastDateOfPreviousMonth(DateTime dateTime) {
    final lastMonth = getLastMonth(dateTime);
    return findLastDateOfTheMonth(lastMonth);
  }

  /// Get days list of a month.
  List<DateTime> getDayListOfMonth(DateTime date) {
    final month = date.month;
    final dayCount = daysInMonth(month, date.year) ?? 0;
    List<DateTime> dateList = [];
    for (var i = 0; i < dayCount; i++) {
      dateList.add(DateTime(date.year, month, i + 1));
    }
    return dateList;
  }

  /// Get number of day from a date.
  int noOfDaysInMonth({
    DateTime? date,
  }) {
    if (date == null) {
      final today = DateTime.now();
      return daysInMonth(today.month, today.year) ?? 0;
    } else {
      return daysInMonth(date.month, date.year) ?? 0;
    }
  }

  /// Get number of `days` from `month`.
  int? daysInMonth(final int monthNum, final int year) {
    if (monthNum > 12) {
      return null;
    }
    List<int> monthLength = List.filled(12, 0);
    monthLength[0] = 31;
    monthLength[2] = 31;
    monthLength[4] = 31;
    monthLength[6] = 31;
    monthLength[7] = 31;
    monthLength[9] = 31;
    monthLength[11] = 31;
    monthLength[3] = 30;
    monthLength[8] = 30;
    monthLength[5] = 30;
    monthLength[10] = 30;

    if (isLeapYear(year) == true) {
      monthLength[1] = 29;
    } else {
      monthLength[1] = 28;
    }

    return monthLength[monthNum - 1];
  }

  /// Check the [year] is `leap` year or not.
  bool isLeapYear(int year) {
    bool leapYear = false;
    bool leap = ((year % 100 == 0) && (year % 400 != 0));
    if (leap == true) {
      leapYear = false;
    } else if (year % 4 == 0) {
      leapYear = true;
    }

    return leapYear;
  }
}
