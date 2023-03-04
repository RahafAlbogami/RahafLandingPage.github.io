import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final navItems = [
    "Home",
    "About",
    "Projects",
    "Technologies",
    "Information",
  ];

  List<Widget> navItem() {
    return navItems
        .map((item) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                item,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w500),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset("assets/images/RahafLogo.png")
              
              
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: navItem()
                  ..add(Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.075,
                      padding: const EdgeInsets.all(10),
                      decoration: const ShapeDecoration(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(50, 20, 80, 1),
                              Color.fromRGBO(135, 0, 41, 1),
                            ]),
                      ),
                      child: const Center(
                        child: Text(
                          "Contact Me",
                          style: TextStyle(fontSize: 15, color: Colors.white,  fontFamily: "Quicksand",
                    fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  )),
              ),
            )
          ]),
    );
  }
}
