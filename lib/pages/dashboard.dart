import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../dashboard_components/buttons.dart';
import '../dashboard_components/cafeteria.dart';
import '../dashboard_components/calendar.dart';
import '../util/nav_bar.dart';
import '../dashboard_components/report.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isVisible = true;

  void closeReport() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBuilder.build(title: "Dashboard"),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              if (_isVisible)
                Expanded(flex: 1, child: Report(onPressed: closeReport)),
              Expanded(flex: 1, child: Buttons()),
              Expanded(flex: 1, child: Cafeteria()),
              Calendar(),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(indexPage: 0));
  }
}
