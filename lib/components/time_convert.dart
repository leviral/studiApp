class TimeConvert {
  final List weekdays = [
    "Montag",
    "Dienstag",
    "Mittwoch",
    "Donnerstag",
    "Freitag",
    "Samstag",
    "Sonntag"
  ];
  final List months = [
    "Januar",
    "Februar",
    "März",
    "April",
    "Mai",
    "Juni",
    "Juli",
    "August",
    "September",
    "Oktober",
    "November",
    "Dezember"
  ];

  String get convertTime {
    DateTime time = DateTime.now();
    String currentDate =
        "${weekdays[time.weekday - 1]}, ${time.day}. ${months[time.month - 1]}";
    return currentDate;
  }

}
