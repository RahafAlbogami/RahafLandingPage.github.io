import 'package:flutter/material.dart';
import 'package:landing_page/widget/navBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static MaterialColor myColour = const MaterialColor(
    0xde004e,
    <int, Color>{
      50: Color.fromRGBO(222, 0, 78, 1),
      100: Color.fromRGBO(222, 0, 78, 1),
      200: Color.fromRGBO(222, 0, 78, 1),
      300: Color.fromRGBO(222, 0, 78, 1),
      400: Color.fromRGBO(222, 0, 78, 1),
      500: Color.fromRGBO(222, 0, 78, 1),
      600: Color.fromRGBO(222, 0, 78, 1),
      700: Color.fromRGBO(222, 0, 78, 1),
      800: Color.fromRGBO(222, 0, 78, 1),
      900: Color.fromRGBO(222, 0, 78, 1),
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rahaf Landing Page',
      theme: ThemeData(
        primarySwatch: myColour,
      ),
      home: const MyHomePage(title: 'New Landing Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(207, 6, 76, 1),
                          Color.fromRGBO(137, 9, 57, 1),
                        ]),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Image.asset(
                        "assets/images/background.png",
                        opacity: const AlwaysStoppedAnimation(.2),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Image.asset("assets/images/Rahaf.png"),
                        )),
                    Stack(children: [
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.017,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(13, 26, 34, 1)),
                            child: Container()),
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Image.asset(
                          "assets/images/Textures.png",
                        ),
                      ),
                    ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NavBar(),
                        Padding(
                          padding: const EdgeInsets.only(top: 100, left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.16,
                                padding: const EdgeInsets.all(10),
                                decoration: const ShapeDecoration(
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                    color: Colors.black),
                                child: const Center(
                                  child: Text(
                                    "WELCOME TO MY WORLD",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: "Porter"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "I AM RAHAF",
                                        style: TextStyle(
                                            fontSize: 150,
                                            color: Colors.white,
                                            fontFamily: "Porter"),
                                      ),
                                      Text(
                                        "a mobile developer",
                                        style: TextStyle(
                                            fontSize: 45,
                                            color: Colors.white,
                                            fontFamily: "Porter"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 50, bottom: 15),
                                child: Text(
                                  "Welcome to my Protofilio, here where i display my latest projects and the technologies i had worked on ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Quicksand",
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
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
                                      "Hire me",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontFamily: "Quicksand",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 1,
                  //   // decoration: const BoxDecoration(color: Color.fromRGBO(13, 26, 34, 1)),
                  //   child: Image.asset(
                  //     "assets/images/Component 1.png",
                  //   ),
                  // ),
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(13, 26, 34, 1)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
