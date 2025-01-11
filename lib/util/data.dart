class Data {
  static String sunIcon = "assets/icons/sun.png";
  static String bookIcon = "assets/icons/book.png";
  static String penIcon = "assets/icons/fountain-pen.png";
  static String coffeeIcon = "assets/icons/coffee.png";

  final Map<String, List<List<String>>> timeTable = {
    "Montag": [
      [sunIcon, "09:20", "EMI Ü", "APB/E067/P", "Ü"],
      [bookIcon, "11:10", "LA VL", "HSZ/0002/E", "VL"],
      [penIcon, "13:00", "DS Ü", "SCH/A252/U", "Ü"],
      [sunIcon, "14:50", "Mensa", "", "Mensa"]
    ],
    "Dienstag": [],
    "Mittwoch": [
      [bookIcon, "11:10", "DS VL", "HSZ/0002/E", "VL"],
      [sunIcon, "13:00", "Mensa", "", "Mensa"],
      [coffeeIcon, "13:45", "frei", "", "frei"],
      [penIcon, "14:50", "LA Ü", "GER/009", "Ü"]
    ],
    "Donnerstag": [
      [penIcon, "09:20", "Python", "APB/E067", "Ü"],
      [bookIcon, "11:10", "EMI VL", "HSZ/0003/H", "VL"],
      [sunIcon, "13:00", "Mensa", "", "Mensa"],
      [coffeeIcon, "13:45", "frei", "", "frei"],
      [penIcon, "14:50", "AuD Ü", "APB/E007", "Ü"]
    ],
    "Freitag": [
      [bookIcon, "09:20", "AuD VL", "HSZ/0002/E", "VL"],
      [bookIcon, "11:10", "DS VL", "HSZ/0002/E", "VL"],
      [sunIcon, "13:00", "Mensa", "", "Mensa"],
    ],
    "Samstag": [],
    "Sonntag": []
  };

  List pomodoroTimes = [];
}
