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
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(207, 6, 76, 1),
                        Color.fromRGBO(137, 9, 57, 1),
                      ]),
                    ),
                  ),
                 Column(
                  children: [
                     NavBar(),
                     Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      padding: const EdgeInsets.all(10),
                      decoration: const ShapeDecoration(
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                    
                       color: Colors.black
                      ),
                      child: const Center(
                        child:  Text(
                          "WELCOME TO MY WORLD",
                          style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                 )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(41, 19, 46, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
