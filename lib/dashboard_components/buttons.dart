import 'dart:async';

import 'package:flutter/material.dart';

import '../components/buttons_template.dart';
import '../components/time_convert.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  TimeConvert timeConvert = TimeConvert();
  String currentDate = '';
  late Timer _timer;

  List buttonsVariant = [
    [Icons.attach_file_outlined, Colors.blueAccent, "OPAL"],
    [Icons.folder_outlined, Colors.orange, "Selma"],
    [Icons.chat_bubble_outline, Colors.teal, "Matrix"],
    [Icons.email_outlined, Colors.pinkAccent, "Mail"]
  ];

  @override
  void initState() {
    super.initState();
    // Initialisiere den Timer, um das Datum jede Sekunde zu aktualisieren
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        currentDate = timeConvert.convertTimeDashboard();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Timer stoppen, wenn das Widget nicht mehr angezeigt wird
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Center(
              child: Text(
                currentDate,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonsTemplate(
                    icon: buttonsVariant[0][0],
                    color: buttonsVariant[0][1],
                    description: buttonsVariant[0][2]),
                ButtonsTemplate(
                    icon: buttonsVariant[1][0],
                    color: buttonsVariant[1][1],
                    description: buttonsVariant[1][2]),
                ButtonsTemplate(
                    icon: buttonsVariant[2][0],
                    color: buttonsVariant[2][1],
                    description: buttonsVariant[2][2]),
                ButtonsTemplate(
                    icon: buttonsVariant[3][0],
                    color: buttonsVariant[3][1],
                    description: buttonsVariant[3][2]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
