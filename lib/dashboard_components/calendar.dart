import 'package:flutter/material.dart';

import '../components/template_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List<dynamic> defaultEntries = [
    ["assets/icons/fountain-pen.png", "7:30", "EMI Ü", "APB E040", "Ü"],
    ["assets/icons/sun.png", "9:20", "frei", null, "frei"],
    ["assets/icons/book.png", "11:10", "EMI VL", "HSZ 03", "VL"],
    ["assets/icons/coffee.png", "13:00", "Mensa", null, "Mensa"],
    ["assets/icons/fountain-pen.png", "14:50", "AUD Ü", "APB E001", "Ü"],
    ["assets/icons/sun.png", "16:20", "frei", null, "Ü"]
  ];

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
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    padding: EdgeInsets.only(left: 40, right: 40),
                    itemCount: defaultEntries.length,
                    itemBuilder: (context, index) {
                      return TemplateCalendar(
                          iconOrImage: defaultEntries[index][0],
                          time: defaultEntries[index][1],
                          appointment: defaultEntries[index][2],
                          room: defaultEntries[index][3],
                          typeAppointment: defaultEntries[index][4]);
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
