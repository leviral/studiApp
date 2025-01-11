import 'dart:ffi';

class Data {
  Map<String, List<List<String>>> timeTable = {
    "Montag": [
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
    ],
    "Dienstag": [
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
    ],
    "Mittwoch": [
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/sun.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
    ],
    "Donnerstag": [
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
    ],
    "Freitag": [
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"],
      ["assets/icons/book.png", "11:10", "LA VL", "HSZ/0002/E", "VL"],
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
    ],
    "Samstag": [],
    "Sonntag": []
  };

  List pomodoroTimes = [];
}
