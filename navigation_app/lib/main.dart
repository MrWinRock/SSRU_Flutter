// Packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_app/pages/edit_username.dart';

//Pages
import 'pages/home_page.dart';
import 'pages/profile_page.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(title: "Home"),
        routes: <RouteBase>[
          GoRoute(
            path: 'profile',
            builder: (context, state) => const ProfilePage(),
          ),
          GoRoute(
              path: 'editProfile/:username',
              builder: (context, state) => EditPage(
                    username: state.pathParameters['username'] ?? "noname",
                    saveMethod: state.queryParameters['saveMethod'] ?? "local",
                  )),
        ]),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
