class Utils {
  static int getDateDiffInMin(DateTime one, DateTime two) {
    return one.difference(two).inMinutes.abs();
  }

  static int getMidNightToNowDiffInMin() {
    final todayDate = DateTime.now();
    final midNightDate =
        DateTime(todayDate.year, todayDate.month, todayDate.day, 00, 00, 00);
    return getDateDiffInMin(todayDate, midNightDate);
  }
}
