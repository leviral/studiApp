import 'package:flutter/material.dart';
import 'package:studyapp/components/time_convert.dart';
import 'package:studyapp/util/data.dart';

import '../components/template_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  Data data = Data();
  TimeConvert timeConvert = TimeConvert();

  var indexWeekday = DateTime.now().weekday - 1;

  String convertIndexToString() {
    return timeConvert.weekdays[indexWeekday];
  }

  bool checkIsEmpty(String day) {
    return data.timeTable[day]!.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Row(
                    children: [
                      Icon(
                        Icons.today_outlined,
                        color: Color.fromRGBO(6, 2, 102, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Heute",
                        style: TextStyle(
                            color: Color.fromRGBO(6, 2, 102, 1), fontSize: 16),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Color.fromRGBO(6, 2, 102, 1),
                    ))
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: checkIsEmpty(convertIndexToString())
                    ? Center(
                      child: Text(
                          "keine Termine",
                          style: TextStyle(color: Color.fromRGBO(6, 2, 102, 1), fontSize: 25),
                        ),
                    )
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        padding: EdgeInsets.only(left: 40, right: 40),
                        itemCount:
                            data.timeTable[convertIndexToString()]?.length ?? 0,
                        itemBuilder: (context, index) {
                          return TemplateCalendar(
                              iconOrImage: data
                                  .timeTable[convertIndexToString()]![index][0],
                              time: data
                                  .timeTable[convertIndexToString()]![index][1],
                              appointment: data
                                  .timeTable[convertIndexToString()]![index][2],
                              room: data
                                  .timeTable[convertIndexToString()]![index][3],
                              typeAppointment:
                                  data.timeTable[convertIndexToString()]![index]
                                      [4]);
                        }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
