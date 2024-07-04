import 'package:get/get.dart';

import '../../q4/binding/q4_binding.dart';
import '../../q4/view/q4_view.dart';

class Q3Controller extends GetxController {
  final RxInt selectedRadio = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setSelectedRadio(int val) {
    selectedRadio.value = val;
  }

  void selectGender() {
    if (selectedRadio.value == 0) {
      Get.snackbar("Error", "Please choose your gender");
    } else {
      Get.to(
        Q4View(),
        binding: Q4Binding(),
      );
    }
  }
}
