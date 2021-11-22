// ignore_for_file: unrelated_type_equality_checks
// Package Imports

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

// File Imports
import '../homeScreen/home_course_controller.dart';

import 'header.dart';

// final homeController = Get.find<HomeCourseController()>();
final homeController = Get.put(HomeCourseController());

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

  List<Widget> tabs = [
    Center(child: Text("Home", style: TextStyle(color: Colors.white))),
    Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
    Center(child: Text("Notification", style: TextStyle(color: Colors.white))),
    Center(child: Text("Add item", style: TextStyle(color: Colors.white))),
  ];

  int currentPage = 0;

  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomScrollView(
        // dragStartBehavior: DragStartBehavior.start,
        // shrinkWrap: true,
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: FlashyTabBar(
        height: 70,
        backgroundColor: Colors.grey.shade900,
        animationDuration: const Duration(milliseconds: 300),
        selectedIndex: currentPage,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentPage = index;
        }),
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
            title: const Text('My Learning'),
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
