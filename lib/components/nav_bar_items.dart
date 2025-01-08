import 'package:flutter/material.dart';

class NavBarItems extends StatelessWidget {
  final dynamic iconOrImage;
  final String description;
  final bool colorSwitch;
  final Widget pageName;

  const NavBarItems(
      {super.key,
      required this.iconOrImage,
      required this.description,
      required this.colorSwitch,
      required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: colorSwitch ? Color.fromRGBO(6, 2, 102, 1) : null,
                borderRadius: BorderRadius.circular(20)),
            width: 60,
            height: 30,
            child: iconOrImage is IconData
                ? IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageName)),
                    icon: Icon(iconOrImage),
                    iconSize: 24,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: colorSwitch
                        ? Colors.white
                        : Color.fromRGBO(6, 2, 102, 1),
                  )
                : GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pageName)),
                    child: Image.asset(
                      iconOrImage,
                      color: colorSwitch
                          ? Colors.white
                          : Color.fromRGBO(6, 2, 102, 1),
                      height: 24,
                      width: 24,
                    ),
                  )),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Center(
            child: Text(
              description,
              style:
                  TextStyle(color: Color.fromRGBO(6, 2, 102, 1), fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
