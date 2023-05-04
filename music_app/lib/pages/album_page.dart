import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<StatefulWidget> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            
          ],
        ),
      ),
    );
  }
}
