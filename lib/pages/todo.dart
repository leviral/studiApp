import 'package:flutter/material.dart';
import 'package:studyapp/util/app_bar.dart';

import '../util/nav_bar.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.build(title: "ToDo's"),
        bottomNavigationBar: NavBar(indexPage: 3)
    );
  }
}