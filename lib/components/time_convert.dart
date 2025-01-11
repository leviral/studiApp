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

  String convertTimeDashboard() {
    DateTime time = DateTime.now();
    String formatDate =
        "${weekdays[time.weekday - 1]}, ${time.day}. ${months[time.month - 1]}";
    return formatDate;
  }

  String convertDaysMonths () {
    DateTime time = DateTime.now();
    String formatDate = "${time.day.toString().padLeft(2, "0")}.${time.month.toString().padLeft(2, "0")}";
    return formatDate;
  }

}
