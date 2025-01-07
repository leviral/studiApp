import 'package:flutter/material.dart';
import 'package:studiapp/util/buttons.dart';
import 'package:studiapp/util/nav_bar.dart';
import '../util/cafeteria.dart';
import '../util/calendar.dart';
import '../util/report.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(6, 2, 102, 0.5),
        appBar: AppBar(
          title: Text("Study-App"),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_outlined),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.account_circle_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Expanded(flex: 1, child: Report()),
              Expanded(flex: 1, child: Buttons()),
              Expanded(flex: 1, child: Cafeteria()),
              Calendar(),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(indexPage: 0));
  }
}
