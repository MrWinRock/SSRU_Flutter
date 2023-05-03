import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileStates();
}

class _ProfileStates extends State<ProfilePage> {
  final String _username = "Peter_Parker";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Username: MrWinRock"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () => context.go('/editProfile/$_username'),
                    child: const Text("Edit"))
              ],
            ),
            TextButton(
                onPressed: () => context.go('/'), child: const Text("Home"))
          ],
        ),
      ),
    );
  }

  // void _navigateToHome() {
  //   Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) => const HomePage(
  //             title: "Home",
  //           )));
  // }
}
