// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Pages
import 'landing_page.dart';
import 'authentication/email_login_page.dart';
import 'homeScreen/home_page.dart';
import 'authentication/phone_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get material App for get X
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        // Get X Pages
        GetPage(
          name: '/',
          page: () => const LandingPage(),
        ),
        GetPage(
          name: '/emailLogin',
          page: () => const EmailLogin(),
        ),
        GetPage(
          name: '/phoneLogin',
          page: () => const PhoneLogin(),
        ),
        GetPage(
          name: '/homePage',
          page: () =>  HomePage(),
        ),
      ],
      initialRoute: '/homePage',
    );
  }
}
