import 'package:flutter/material.dart';

class PomodoroTimes extends StatelessWidget {
  final String times;
  final String date;

  const PomodoroTimes({super.key, required this.times, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Color.fromRGBO(6, 2, 102, 1), width: 3)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Text(
                date,
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(6, 2, 102, 1), fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                times,
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(6, 2, 102, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
