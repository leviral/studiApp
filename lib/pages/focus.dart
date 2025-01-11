import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:studyapp/components/time_convert.dart';
import 'package:studyapp/util/app_bar.dart';
import 'package:studyapp/util/data.dart';

import '../focus_components/pomodoro_times.dart';
import '../util/nav_bar.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  Data data = Data();
  TimeConvert timeConvert = TimeConvert();
  late Timer _counter;
  int countTimer = 0;
  bool _isTimerActive = false;

  void _startTimer() {
    if (_isTimerActive) {
      return;
    }
    _counter = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        countTimer++;
      });
    });
    setState(() {
      _isTimerActive = true;
    });
  }

  String convertTime() {
    int hours = ((countTimer % (3600 * 24)) ~/ 3600);
    int minutes = ((countTimer % 3600) ~/ 60);
    int seconds = countTimer % 60;
    String formatedTimer = '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
    return formatedTimer;
  }

  void _stopTimer() {
    _counter.cancel();
    setState(() {
      _isTimerActive = false;
    });
  }

  void _resetTimer() {
    _counter.cancel();
    data.pomodoroTimes.add([TimeConvert().convertDaysMonths(), convertTime()]);
    setState(() {
      _isTimerActive = false;
      countTimer = 0;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _stopTimer(); // Timer stoppen, wenn das Widget zerstört wird
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBuilder.build(title: "Fokus"),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Text(
                  convertTime(),
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey[700]),
                          onPressed: _resetTimer,
                          child: Text(
                            "Löschen",
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 14),
                          )),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      child: _isTimerActive
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.red[700]),
                              onPressed: _stopTimer,
                              child: Text(
                                "Stop",
                                style: TextStyle(
                                    color: Colors.red[200], fontSize: 14),
                              ),
                            )
                          : TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.green[700]),
                              onPressed: _startTimer,
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    color: Colors.green[200], fontSize: 14),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Highscores",
                        style: TextStyle(
                            color: Color.fromRGBO(6, 2, 102, 1), fontSize: 24),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListView.builder(
                          itemCount: data.pomodoroTimes.length,
                          itemBuilder: (context, index) {
                            return PomodoroTimes(
                                date: data.pomodoroTimes[index][0],
                                times: data.pomodoroTimes[index][1]);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: NavBar(indexPage: 1));
  }
}
