import 'package:flutter/material.dart';
import 'package:studyapp/util/data.dart';

class TemplateCalendar extends StatelessWidget {
  Data data = Data();
  final dynamic iconOrImage;
  final String time;
  final String appointment;
  final String? room;
  final String typeAppointment;

  TemplateCalendar(
      {super.key,
      required this.iconOrImage,
      required this.time,
      required this.appointment,
      this.room,
      required this.typeAppointment});

  Color? colorAppointment() {
    try {
      if (typeAppointment == "VL") {
        return Color.fromRGBO(6, 2, 102, 1);
      } else if (typeAppointment == "Ü") {
        return Colors.teal;
      } else if (typeAppointment == "Mensa") {
        return Colors.green[400];
      } else if (typeAppointment == "frei") {
        return Colors.grey[700];
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: colorAppointment()),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconOrImage is IconData
                        ? Icon(
                            iconOrImage,
                            size: 12,
                            color: Colors.white,
                          )
                        : Image.asset(
                            iconOrImage,
                            width: 12,
                            height: 12,
                            color: Colors.white,
                          ),
                    Text(
                      time,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      appointment,
                      style: TextStyle(
                          color: Color.fromRGBO(6, 2, 102, 1), fontSize: 16),
                    ),
                    Text(
                      room ?? "",
                      style: TextStyle(
                          color: Color.fromRGBO(6, 2, 102, 1), fontSize: 10),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
