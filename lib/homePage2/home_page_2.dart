// ignore_for_file: unrelated_type_equality_checks
// Package Imports
import 'package:animate_do/animate_do.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinos_elearn/homePage2/profile_page/profile_page.dart';
import 'package:tinos_elearn/homePage2/searchScreen/search_screen.dart';

// File Imports
import 'package:tinos_elearn/homePage2/controller_initialize.dart';
import 'home_screen_2.dart';
import 'package:tinos_elearn/homePage2/home_course_controller.dart';

import 'text_style.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  void initState() {
    super.initState();
    homeController.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: GetBuilder<HomeCourseController>(
        builder: (controller) => getScreen(controller),
      ),
      bottomNavigationBar: GetBuilder<HomeCourseController>(
        builder: (controller) => FlashyTabBar(
          height: 70,
          backgroundColor: Colors.grey.shade900,
          animationDuration: const Duration(milliseconds: 300),
          showElevation: true,
          onItemSelected: (index) {
            controller.changeHomePage2(index);
          },
          selectedIndex: controller.homeScreen2CurrentPage.toInt(),
          items: [
            FlashyTabBarItem(
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
              icon: const Icon(Icons.event),
              title: const Text('Home'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.person),
              title: const Text('My Account'),
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

Widget courseUi({
  required BuildContext context,
  required String image,
  required String text,
  required String creator,
  required String price,
  required Function onTap,
}) {
  return
  // Fade in up transition package 
  FadeInUp(
    duration:const Duration(milliseconds: 1000),
    delay:const Duration(milliseconds: 500),
    child: Column(
      children: [
        // Gesture detector for selection detection
        GestureDetector(
          onTap: () {
            onTap;
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 170,
            height: 230,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey.shade900,
              child: Stack(
                children: [
                  // Align for image ,text , creator, and price
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 00,
                    child: Text(
                      text,
                      style: titleTextStyle(),
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 00,
                    child: Text(
                      creator,
                      style: creatorTextStyle(),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 00,
                    child: Text(
                      price,
                      style: priceTextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,)
      ],
    ),
  );
}

// Screen Controller using Getx
Widget getScreen(controller) {
  if (controller.homeScreen2CurrentPage == 0) {
    return const HomeScreen2();
  } else if (controller.homeScreen2CurrentPage == 1) {
    return const SearchScreen();
  } else {
    return const ProfilePage();
  }
}