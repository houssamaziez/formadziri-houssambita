import 'package:get/get.dart';

class CourseEXController extends GetxController {
  int groupindex = 0;

  change(index) {
    groupindex = index;
    update();
  }
}
