import 'package:flutter/material.dart';

class ButtonsTemplate extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String description;

  const ButtonsTemplate(
      {super.key,
      required this.icon,
      required this.color,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
            width: 50,
            height: 50,
            child: Icon(icon, color: Colors.white,),
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(description, style: TextStyle(color: Colors.white, fontSize: 14),),
        )
      ],
    );
  }
}
