import 'package:get/get.dart';

class QuestionController extends GetxController {
  // RxBools to track container selection
  RxBool isSelectedContainer1 = false.obs;
  RxBool isSelectedContainer2 = false.obs;

  // Method to handle tap on container 1
  void handleContainer1Tap() {
    isSelectedContainer1.value = true;
    isSelectedContainer2.value = false;
  }

  // Method to handle tap on container 2
  void handleContainer2Tap() {
    isSelectedContainer1.value = false;
    isSelectedContainer2.value = true;
  }
}
