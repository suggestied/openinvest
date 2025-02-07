extension DateExtension on DateTime {
  DateTime get firstDayOfWeek {
    return subtract(Duration(days: weekday - 1));
  }

  DateTime get lastDayOfWeek {
    return add(Duration(days: 7 - weekday));
  }

  DateTime get firstDayOfMonth {
    return DateTime(year, month);
  }

  bool isToday() => isSameDay(DateTime.now());

  bool isSameDay(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }

  bool isAfterDayOrEqual(DateTime other) {
    return isAfter(other) || isSameDay(other);
  }

  bool isBeforeDayOrEqual(DateTime other) {
    return isBefore(other) || isSameDay(other);
  }

  bool isSameWeek(DateTime other) {
    final kfirstDayOfTheWeek = firstDayOfWeek;
    return other.isAfterDayOrEqual(kfirstDayOfTheWeek) &&
        other.isBefore(lastDayOfWeek);
  }

  DateTime startOfDay() {
    return DateTime(year, month, day);
  }
}
