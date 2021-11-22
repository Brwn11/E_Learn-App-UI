import 'package:get/get.dart';

class HomeCourseController extends GetxController {
  var courseId = 0.obs;
  increment() {
    courseId = 1.obs;
    update();
  }

  decrement() {
    courseId = 0.obs;
    update();
  }

  var currentPage = 0.obs;
  changePage(int page) {
    currentPage = page.obs;
    update();
  }

  initState() {
    currentPage = 0.obs;
    update();
  }
}
