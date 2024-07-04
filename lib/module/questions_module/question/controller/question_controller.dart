import 'package:get/get.dart';

import '../../practice/binding/practice_binding.dart';
import '../../practice/view/practice-view.dart';

class QuestionController extends GetxController {
  RxBool isSelectedContainer1 = false.obs;
  RxBool isSelectedContainer2 = false.obs;
  void handleContainer1Tap() {
    isSelectedContainer1.value = true;
    isSelectedContainer2.value = false;
  }

  void handleContainer2Tap() {
    isSelectedContainer1.value = false;
    isSelectedContainer2.value = true;
  }

  void selectValue() {
    if (isSelectedContainer1.isFalse && isSelectedContainer2.isFalse) {
      Get.snackbar("Error", "Please Select Your Goal");
    } else {
      Get.to(
        PracticeView(),
        binding: PracticeBinding(),
      );
    }
  }
}
