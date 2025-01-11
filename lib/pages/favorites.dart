import 'package:flutter/material.dart';
import 'package:studyapp/util/app_bar.dart';

import '../util/nav_bar.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarBuilder.build(title: "Favoriten"),
        body: Center(
            child: Text("In Entwicklung",
                style: TextStyle(color: Colors.white, fontSize: 20))),
        bottomNavigationBar: NavBar(indexPage: 4));
  }
}
