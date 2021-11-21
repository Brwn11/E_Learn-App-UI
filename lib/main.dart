import 'package:flutter/material.dart';
import 'package:tinos_elearn/landing_page.dart';

import 'email_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const LandingPage(),
        '/emailLogin':(_) => const EmailLogin(),
      },
    );
  }
}
