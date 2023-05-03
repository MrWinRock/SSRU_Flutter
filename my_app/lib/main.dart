// import 'dart:html';

// import 'package:flutter/foundation.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Weather Station'),
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
    const TextStyle degreeNumberStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w300,
    );

    final Shader degreeLinearGradient = const LinearGradient(colors: <Color>[
      Colors.white,
      Colors.white,
      Colors.white70,
      Colors.white60,
      Colors.white54,
      Colors.white30,
      Colors.white10,
      Colors.transparent
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .createShader(const Rect.fromLTWH(0, 0, 300, 300));

    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/mountain_view2.jpg"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Bangkok, Thailand",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 6,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(121, 188, 188, 188),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          ),
          centerTitle: true,
        ),

        // Body
        body: Container(
          constraints: const BoxConstraints(maxHeight: 300),
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("23°",
                      style: TextStyle(
                          fontSize: 180,
                          foreground: Paint()..shader = degreeLinearGradient))
                ],
              ),
            ],
          ),
        ),

        bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
          constraints: const BoxConstraints(maxHeight: 250),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Tuesday",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 7),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.wb_sunny_outlined,
                    size: 36,
                    color: Color.fromARGB(255, 255, 162, 33),
                  ),
                  Icon(
                    Icons.wb_sunny_outlined,
                    size: 36,
                    color: Color.fromARGB(255, 255, 162, 33),
                  ),
                  Icon(
                    Icons.wb_cloudy_outlined,
                    size: 36,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.cloudy_snowing,
                    size: 36,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text("Sunny"),
                  Text("Snowing"),
                  Text("Cloudy"),
                  Text("Raining"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text(
                    "23°",
                    style: degreeNumberStyle,
                  ),
                  Text(
                    "-10°",
                    style: degreeNumberStyle,
                  ),
                  Text(
                    "16°",
                    style: degreeNumberStyle,
                  ),
                  Text(
                    "3°",
                    style: degreeNumberStyle,
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
