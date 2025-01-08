import 'package:flutter/material.dart';
import 'package:studyapp/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(6, 2, 102, 0.5),
        useMaterial3: true,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      home: DashboardPage(),
    );
  }
}
