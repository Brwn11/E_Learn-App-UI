
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_course_controller.dart';
import 'home_page.dart';

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
            // ignore: unrelated_type_equality_checks
            primary: controller.courseId == 0 ? Colors.white : Colors.black,
            minimumSize: const Size(
              100,
              50,
            ),
          ),
          child: Text(
            text,
            // ignore: unrelated_type_equality_checks
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
          // ignore: unrelated_type_equality_checks
          primary: controller.courseId == 1 ? Colors.white : Colors.black,
          minimumSize: const Size(
            100,
            50,
          ),
        ),
        child: Text(
          text,
          // ignore: unrelated_type_equality_checks
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
