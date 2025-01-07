import 'package:flutter/material.dart';
import 'package:studiapp/components/nav_bar_items.dart';

class NavBar extends StatelessWidget {
  List navBarItems = [
    [Icons.space_dashboard_outlined, "Dash"],
    [Icons.music_note, "Musik"],
    [Icons.today_outlined, "Stundenplan"],
    [Icons.list, "Todo"],
    [Icons.star, "Favoriten"]
  ];
  final int indexPage;

  NavBar({super.key, required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItems(
            iconOrImage: navBarItems[0][0],
            description: navBarItems[0][1],
            colorSwitch: indexPage == 0,
          ),
          NavBarItems(
            iconOrImage: navBarItems[1][0],
            description: navBarItems[1][1],
            colorSwitch: indexPage == 1,
          ),
          NavBarItems(
            iconOrImage: navBarItems[2][0],
            description: navBarItems[2][1],
            colorSwitch: indexPage == 2,
          ),
          NavBarItems(
            iconOrImage: navBarItems[3][0],
            description: navBarItems[3][1],
            colorSwitch: indexPage == 3,
          ),
          NavBarItems(
            iconOrImage: navBarItems[4][0],
            description: navBarItems[4][1],
            colorSwitch: indexPage == 4,
          ),
        ],
      ),
    );
  }
}
