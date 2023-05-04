import 'package:flutter/material.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<StatefulWidget> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/vinyl_bg.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(104, 39, 39, 39),
        appBar: AppBar(
          title: const Text("WinRock Music"),
          centerTitle: true,
        ),
      ),
    );
  }
}
