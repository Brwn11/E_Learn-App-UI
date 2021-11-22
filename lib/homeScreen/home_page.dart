// ignore_for_file: unrelated_type_equality_checks
// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:tinos_elearn/my_courses_screen.dart';
import 'package:tinos_elearn/searchScreen/search_screen.dart';
// File Imports
import 'home_course_controller.dart';
import 'home_screen.dart';

// final homeController = Get.find<HomeCourseController()>();
final homeController = Get.put(HomeCourseController());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    homeController.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<HomeCourseController>(
        builder: (controller) => BottomNavyBar(
          animationDuration: const Duration(milliseconds: 1500),
          backgroundColor: const Color.fromRGBO(67, 66, 113, 1),
          containerHeight: 60,
          curve: Curves.fastLinearToSlowEaseIn,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          itemCornerRadius: 20,
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              textAlign: TextAlign.center,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              textAlign: TextAlign.center,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('My Learning'),
              textAlign: TextAlign.center,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
          ],
          onItemSelected: (index) {
            controller.changePage(index);
            // print(homeController.currentPage);
          },
          selectedIndex: controller.currentPage.toInt(),
        ),
      ),
      body:
          // SafeArea(
          //         child: Container(
          //           width: double.infinity,
          //           height: double.infinity,
          //           decoration: const BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage(
          //                 'assets/images/background2.jpg',
          //               ),
          //               fit: BoxFit.cover,
          //             ),
          //             // gradient: LinearGradient(
          //             //   begin: Alignment.topLeft,
          //             //   end: Alignment.bottomRight,
          //             //   colors: [
          //             //     Color.fromRGBO(13, 12, 12, 1),
          //             //     Color.fromRGBO(67, 66, 113, 1)
          //             //   ],
          //             //   stops: [0.1, 0.9],
          //             // ),
          //           ),
          //           child: SingleChildScrollView(
          //             child: Column(
          //               children: [
          //                 const SizedBox(
          //                   height: 20,
          //                 ),
          //                 Row(
          //                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                     IconButton(
          //                       onPressed: () {
          //                         null;
          //                       },
          //                       icon: const Icon(
          //                         Icons.menu,
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                     const Spacer(),
          //                     GestureDetector(
          //                       child: const CircleAvatar(
          //                         radius: 30,
          //                         backgroundImage: AssetImage(
          //                           'assets/images/mbb.jpeg',
          //                         ),
          //                       ),
          //                     ),
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                   ],
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   children: const [
          //                     Padding(
          //                       padding: EdgeInsets.symmetric(
          //                         horizontal: 20,
          //                         vertical: 20,
          //                       ),
          //                       child: Text(
          //                         "Featured Courses",
          //                         style: TextStyle(
          //                           color: Colors.white,
          //                           fontSize: 20,
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                   children: [
          //                     courseIconWidget(
          //                       text: "Cyber Security",
          //                       onPressed: () {
          //                         homeController.decrement();
          //                       },
          //                     ),
          //                     courseIconWidget2(
          //                       text: "Programming",
          //                       onPressed: () {
          //                         homeController.increment();
          //                       },
          //                     ),
          //                   ],
          //                 ),
          //                 const SizedBox(
          //                   height: 30,
          //                 ),
          //                 courseWidget(
          //                   context: context,
          //                   image: 'assets/images/html.jpg',
          //                   text: "Html Begginer to \nAdvanced Course",
          //                   person: "Gourav",
          //                   price: "\$ 30",
          //                   firstButtonFunction: (context) {
          //                     ;
          //                   },
          //                   secondButtonFunction: (context) {
          //                     ;
          //                   },
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 courseWidget(
          //                   context: context,
          //                   image: 'assets/images/react.png',
          //                   text: "Learn React with Mosh",
          //                   person: "Mosh Hamedani",
          //                   price: "\$ 10",
          //                   firstButtonFunction: (context) {
          //                     ;
          //                   },
          //                   secondButtonFunction: (context) {
          //                     ;
          //                   },
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 courseWidget(
          //                   context: context,
          //                   image: 'assets/images/flutter2.png',
          //                   text: "Learn Flutter \nwith Firebase",
          //                   person: "Satoshi Nakomoto",
          //                   price: "\$ 5",
          //                   firstButtonFunction: (context) {
          //                     ;
          //                   },
          //                   secondButtonFunction: (context) {
          //                     ;
          //                   },
          //                 ),
          //                 const SizedBox(
          //                   height: 10,
          //                 ),
          //                 courseWidget(
          //                   context: context,
          //                   image: 'assets/images/kali2.jpg',
          //                   text: "Learn Kali Linux \nbasics",
          //                   person: "Dalvi",
          //                   price: "\$ 20",
          //                   firstButtonFunction: (context) {
          //                     ;
          //                   },
          //                   secondButtonFunction: (context) {
          //                     ;
          //                   },
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          GetBuilder<HomeCourseController>(
        builder: (controller) => getScreen(controller),
      ),
    );
  }
}

Widget courseWidget({
  @required context,
  @required image,
  @required text,
  @required person,
  @required price,
  @required firstButtonFunction,
  @required secondButtonFunction,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 120,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          spreadRadius: 5,
        ),
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(0),
        bottomLeft: Radius.circular(0),
        topRight: Radius.circular(00),
        bottomRight: Radius.circular(00),
      ),
      color: Color.fromRGBO(67, 66, 113, 0.4),
    ),
    child: Slidable(
      closeOnScroll: true,
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            // flex: 2,
            onPressed: firstButtonFunction,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.green,
            icon: Icons.enhanced_encryption,
            label: "Enroll",
          ),
          SlidableAction(
            // flex: 1,
            onPressed: secondButtonFunction,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            icon: Icons.details_rounded,
            label: 'Details',
            // autoClose: true,
          ),
        ],
      ),
      direction: Axis.horizontal,
      child: Row(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 200,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                person,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget getScreen(controller) {
  if (controller.currentPage == 0) {
    return const HomeScreen();
  } else if (controller.currentPage == 1) {
    return const SearchScreen();
  } else {
    return const MyCourses();
  }
}
