import 'package:flutter/material.dart';

class Cafeteria extends StatelessWidget {
  const Cafeteria({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/coffee.png",
                      height: 24,
                      width: 24,
                      color: Color.fromRGBO(6, 2, 102, 1),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("Mensa",
                        style: TextStyle(
                            color: Color.fromRGBO(6, 2, 102, 1), fontSize: 16)),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: Color.fromRGBO(6, 2, 102, 1),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                        style: TextStyle(
                            color: Color.fromRGBO(6, 2, 102, 1), fontSize: 16),
                        TextSpan(children: [
                          TextSpan(
                              text: "\tWann?\t",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "4.DS")
                        ])),
                    Text.rich(
                        style: TextStyle(
                            color: Color.fromRGBO(6, 2, 102, 1), fontSize: 16),
                        TextSpan(children: [
                          TextSpan(
                              text: "\tWo?\t",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Alte Mensa")
                        ])),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(6, 2, 102, 1),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 5),
                            child: Text("Zum Angebot", style: TextStyle(color: Colors.grey[300], fontSize: 14),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/mensa_essen.jpg",
                      height: 85,
                      width: 85,
                      fit: BoxFit.cover,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
