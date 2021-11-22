import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Files
import 'package:tinos_elearn/homeScreen/home_course_controller.dart';
import 'course_icon.dart';
import '../homeScreen/home_page.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final homeController = Get.find<HomeCourseController>();
    return SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/background2.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Color.fromRGBO(13, 12, 12, 1),
                  //     Color.fromRGBO(67, 66, 113, 1)
                  //   ],
                  //   stops: [0.1, 0.9],
                  // ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              null;
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                'assets/images/mbb.jpeg',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Text(
                              "Featured Courses",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          courseIconWidget(
                            text: "Cyber Security",
                            onPressed: () {
                              homeController.decrement();
                            },
                          ),
                          courseIconWidget2(
                            text: "Programming",
                            onPressed: () {
                              homeController.increment();
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                        delay:const Duration(milliseconds: 500,),
                        duration:const Duration(milliseconds: 1000,),
                        child: courseWidget(
                          context: context,
                          image: 'assets/images/html.jpg',
                          text: "Html Begginer to \nAdvanced Course",
                          person: "Gourav",
                          price: "\$ 30",
                          firstButtonFunction: (context) {
                            null;
                          },
                          secondButtonFunction: (context) {
                            null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        delay:const Duration(milliseconds: 500,),
                        duration:const Duration(milliseconds: 1500,),
                        child: courseWidget(
                        context: context,
                        image: 'assets/images/react.png',
                        text: "Learn React with Mosh",
                        person: "Mosh Hamedani",
                        price: "\$ 10",
                        firstButtonFunction: (context) {
null;
                        },
                        secondButtonFunction: (context) {
                          null;
                        },
                      ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        delay:const  Duration(milliseconds: 500,),
                        duration:const Duration(milliseconds: 2000,),
                        child: courseWidget(
                        context: context,
                        image: 'assets/images/flutter2.png',
                        text: "Learn Flutter \nwith Firebase",
                        person: "Satoshi Nakomoto",
                        price: "\$ 5",
                        firstButtonFunction: (context) {
                          null;
                        },
                        secondButtonFunction: (context) {
                          null;
                        },
                      ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        delay:const Duration(milliseconds: 500,),
                        duration:const  Duration(milliseconds: 2000,),
                        child: courseWidget(
                        context: context,
                        image: 'assets/images/kali2.jpg',
                        text: "Learn Kali Linux \nbasics",
                        person: "Dalvi",
                        price: "\$ 20",
                        firstButtonFunction: (context) {
                          null;
                        },
                        secondButtonFunction: (context) {
                          null;
                        },
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}