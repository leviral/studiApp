import 'package:flutter/material.dart';

class AppBarBuilder {
  static AppBar build({required String title}) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu_outlined),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_outlined))
      ],
    );
  }
}
