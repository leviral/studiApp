import 'package:flutter/material.dart';
import '../components/nav_bar_items.dart';
import '../pages/dashboard.dart';
import '../pages/favorites.dart';
import '../pages/focus.dart';
import '../pages/time_table.dart';
import '../pages/todo.dart';

class NavBar extends StatelessWidget {
  List navBarItems = [
    [Icons.space_dashboard_outlined, "Dash"],
    [Icons.timer_outlined, "Fokus"],
    [Icons.today_outlined, "Stundenplan"],
    [Icons.list, "Todo"],
    [Icons.star_border_outlined, "Favoriten"]
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
            pageName: DashboardPage(),
          ),
          NavBarItems(
            iconOrImage: navBarItems[1][0],
            description: navBarItems[1][1],
            colorSwitch: indexPage == 1,
            pageName: FocusPage(),
          ),
          NavBarItems(
            iconOrImage: navBarItems[2][0],
            description: navBarItems[2][1],
            colorSwitch: indexPage == 2,
            pageName: TimeTablePage(),
          ),
          NavBarItems(
            iconOrImage: navBarItems[3][0],
            description: navBarItems[3][1],
            colorSwitch: indexPage == 3,
            pageName: ToDoPage(),
          ),
          NavBarItems(
            iconOrImage: navBarItems[4][0],
            description: navBarItems[4][1],
            colorSwitch: indexPage == 4,
            pageName: FavoritesPage(),
          ),
        ],
      ),
    );
  }
}
