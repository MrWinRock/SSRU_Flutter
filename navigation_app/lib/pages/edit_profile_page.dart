import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    super.key,
    required this.username,
    required this.saveMethod,
  });
  final String username;
  final String saveMethod;

  @override
  State<StatefulWidget> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfilePage> {
  String _username = "";
  final TextStyle bodyStyle = const TextStyle(
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Edit Username',
                style: bodyStyle,
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text(widget.username),
                ),
                onChanged: (text) => setState(() {
                  _username = text;
                }),
              ),
              Text('keylogger: $_username'),
              Text(
                'Save Method: ${widget.saveMethod}',
                style: bodyStyle,
              ),
              TextButton(
                  onPressed: () => context.go('/profile/$_username'),
                  child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}