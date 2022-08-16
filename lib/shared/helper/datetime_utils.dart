/// Utility functions for [DateTime]
class DateTimeUtil {
  DateTimeUtil._();

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
