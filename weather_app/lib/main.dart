// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(fontFamily: 'Schyler'),
      home: const MyHomePage(title: 'Weather App'),
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
    // TextDecoration
    const TextStyle timeNumberStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white);

    // Degree Decoration
    const TextStyle degreeNumberStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white);

    return Container(
      // Background Image
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/mountain_view2.jpg"),
              fit: BoxFit.cover)),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        // Body
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
          constraints: const BoxConstraints(maxHeight: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[

                  Text("Bangkok,",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  Text("  Thailand",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              ),

              const Divider(
                indent: 80,
                endIndent: 80,
                thickness: 1.5,
                color: Colors.white70,
                height: 60,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("19°",
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      )),
                  Text("  Sunny",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
        ),

        // Navigation Bar
        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(17, 1, 17, 18),
          constraints: const BoxConstraints(maxHeight: 220),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Date Container
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Tuesday",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),

              const Divider(
                thickness: 2,
                color: Colors.white,
                height: 1,
              ),

              // Time Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text("Now", style: timeNumberStyle),
                  Text("18", style: timeNumberStyle),
                  Text("19", style: timeNumberStyle),
                  Text("20", style: timeNumberStyle),
                  Text("21", style: timeNumberStyle),
                ],
              ),

              // Icon Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Icon(Icons.wb_sunny_outlined, size: 30, color: Colors.white),
                  Icon(Icons.wb_sunny_outlined, size: 30, color: Colors.white),
                  Icon(Icons.wb_cloudy_outlined, size: 30, color: Colors.white),
                  Icon(Icons.wb_cloudy_outlined, size: 30, color: Colors.white),
                  Icon(Icons.wb_cloudy_outlined, size: 30, color: Colors.white),
                ],
              ),

              // Degree Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text("19°", style: degreeNumberStyle),
                  Text("16°", style: degreeNumberStyle),
                  Text("12°", style: degreeNumberStyle),
                  Text("6°", style: degreeNumberStyle),
                  Text("5°", style: degreeNumberStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
