import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key, required this.username, required this.saveMethod});

  final String username;
  final String saveMethod;

  @override
  State<StatefulWidget> createState() => _EditState();
}

class _EditState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Edit Username: ${widget.username}'),
              TextButton(
                onPressed: () => context.go('/profile'),
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
