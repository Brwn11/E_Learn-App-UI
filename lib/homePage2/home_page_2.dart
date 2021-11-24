// ignore_for_file: unrelated_type_equality_checks
// Package Imports
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// File Imports
import '../homeScreen/home_course_controller.dart';
// import 'header.dart';

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

  int currentPage = 0;
  setPage(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        // child: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       toolbarHeight: 0,
        //       title: Text("Tinos ELearn"),
        //     ),
        //     Header(),

        //   ],
        // ),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 10,
                //     top: 20,
                //     bottom: 0,
                //   ),
                //   child: Text(
                //     "Welcome Back",
                //     style: mainFontTextStyle1(),
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    "Featured Courses",
                    style: mainFontTextStyle1(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      courseUi(
                        context: context,
                        image: "assets/images/html.jpg",
                        text: "100 Days of Code :\nHTML CSS Bootcamp",
                        creator: "Dr. Angela Yu",
                        price: "\$10.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/react.png",
                        text: "Modern React With Redux\nAnd More",
                        creator: "Millie",
                        price: "\$15.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/flutter2.png",
                        text: "Learn Flutter With Firebase",
                        creator: "Brown",
                        price: "\$20.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: Text(
                    "Programming",
                    style: mainFontTextStyle1(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      courseUi(
                        context: context,
                        image: "assets/images/node.png",
                        text: "Learn Node.js and \nExpress.js with Experts",
                        creator: "Tim Cook",
                        price: "\$8.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/js.png",
                        text: "Learn JavaScript \ncomplete Basics",
                        creator: "Millie",
                        price: "\$15.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/css.png",
                        text: "CSS Zero to Hero \nComplete Course",
                        creator: "Bobby",
                        price: "\$20.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 0,
                    bottom: 10,
                  ),
                  child: Text(
                    "CyberSecurity",
                    style: mainFontTextStyle1(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      courseUi(
                        context: context,
                        image: "assets/images/kali.jpg",
                        text: "Learn Ethical Hacking\nFrom Experts",
                        creator: "Satoshi Nakomoto",
                        price: "\$20.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/linux.jpg",
                        text: "Learn the basic \ncommands of Linux",
                        creator: "Millie",
                        price: "\$15.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      courseUi(
                        context: context,
                        image: "assets/images/mysql.png",
                        text: "The complete MYSQL \nbasic commands",
                        creator: "Brown",
                        price: "\$20.00",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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

Column courseUi({
  required BuildContext context,
  required String image,
  required String text,
  required String creator,
  required String price,
  required Function onTap,
}) {
  return Column(
    children: [
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
  );
}

TextStyle creatorTextStyle() {
  return TextStyle(
    fontSize: 15,
    color: Colors.grey,
  );
}

TextStyle mainFontTextStyle1() {
  return TextStyle(
    color: Colors.white,
    fontFamily: 'HomePage2MainFont',
    fontSize: 30,
  );
}

TextStyle titleTextStyle() {
  return TextStyle(
    fontSize: 16,
    fontFamily: 'HomePage2Title',
    letterSpacing: 1.2,
    wordSpacing: 1.2,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

TextStyle priceTextStyle() {
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

// class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//   const CustomSliverAppBarDelegate({required this.expandedHeight});
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Stack(
//       fit: StackFit.expand,
//       overflow: Overflow.visible,
//       children: [
//         buildAppBar(context, shrinkOffset),
//       ],
//     );
//   }

//   Widget buildAppBar(BuildContext context, double shrinkOffset) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         const Text("Welcome"),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.grey.shade900,
//             borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(30),
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30),
//               bottomRight: Radius.circular(30),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 spreadRadius: 5,
//                 blurRadius: 10,
//                 offset: Offset(0, 10), // changes position of shadow
//               ),
//             ],
//           ),
//           width: MediaQuery.of(context).size.width - 200,
//           height: 40,
//           child: TextField(
//             decoration: InputDecoration(
//               border: InputBorder.none,
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   @override
//   double get minExtent => kToolbarHeight + 30;
//   @override
//   double get maxExtent => expandedHeight;
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
// }
