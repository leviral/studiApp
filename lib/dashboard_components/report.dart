import 'package:flutter/material.dart';

class Report extends StatelessWidget {

  void Function()? onPressed;
  Report({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(255, 0, 5, 0.6)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Meldung",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => onPressed,
                icon: Icon(Icons.close),
                color: Colors.white,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                          text:
                              "Die Einschreibung für mündliche\nPrüfungen hat begonnen und endet am\n"),
                      TextSpan(
                          text: "21.01.2025",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ".")
                    ])),
          )
        ],
      ),
    );
  }
}
