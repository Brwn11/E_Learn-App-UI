// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_course_controller.dart';

final homeController = Get.find<HomeCourseController>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeCourseController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget courseIconWidget({
    @required onPressed,
    @required text,
  }) {
    return GetBuilder<HomeCourseController>(
      builder: (controller) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            primary: controller.courseId == 0 ? Colors.white : Colors.black,
            minimumSize: const Size(
              100,
              50,
            ),
          ),
          child: Text(
            text,
            style: homeController.courseId == 0
                ? const TextStyle(
                    color: Colors.black,
                  )
                : const TextStyle(
                    color: Colors.white,
                  ),
          ),
          onPressed: onPressed,
        );
      },
    );
  }
}

Widget courseIconWidget2({
  @required onPressed,
  @required text,
}) {
  return GetBuilder<HomeCourseController>(
    builder: (controller) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: controller.courseId == 1 ? Colors.white : Colors.black,
          minimumSize: const Size(
            100,
            50,
          ),
        ),
        child: Text(
          text,
          style: homeController.courseId == 1
              ? const TextStyle(
                  color: Colors.black,
                )
              : const TextStyle(
                  color: Colors.white,
                ),
        ),
        onPressed: onPressed,
      );
    },
  );
}
