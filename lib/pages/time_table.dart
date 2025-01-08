import 'package:flutter/material.dart';
import 'package:studyapp/components/template_calendar.dart';
import 'package:studyapp/util/app_bar.dart';

import '../util/nav_bar.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
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
      ["assets/icons/fountain-pen.png", "13:00", "DS Ü", "SCH/A252/U", "Ü"]
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
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBuilder.build(title: "Studenplan"),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: ListView(
            children: [
              for (var day in timeTable.keys)
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 40),
                          child: Text(day, style: TextStyle(color: Color.fromRGBO(6, 2, 102, 1), fontSize: 20)),
                        ),
                        SizedBox(
                          height: 245,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 20),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                            itemCount: timeTable[day]?.length ?? 0,
                            itemBuilder: (context, index) {
                              var item = timeTable[day]![index];
                              return TemplateCalendar(
                                  iconOrImage: item[0],
                                  time: item[1],
                                  appointment: item[2],
                                  room: item[3],
                                  typeAppointment: item[4]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(indexPage: 2));
  }
}
