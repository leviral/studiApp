import 'package:flutter/material.dart';
import 'package:studyapp/util/app_bar.dart';

import '../util/nav_bar.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBuilder.build(title: "Fokus"),
        body: Column(
          children: [
            Text(
              "Fokus-Timer",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        bottomNavigationBar: NavBar(indexPage: 1));
  }
}
