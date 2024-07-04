import 'package:get/get.dart';

import '../../applausescreen/binding/applausescreen_binding.dart';
import '../../applausescreen/view/applausescreen_view.dart';

class Q6Controller extends GetxController {
  final RxInt selectedRadio = 0.obs;
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setSelectedRadio(int val) {
    selectedRadio.value = val;
  }

  void changeTheme() {
    update();
  }

  void selectValue() {
    if (selectedRadio.value == 0) {
      Get.snackbar("Error", "Please choose any one");
    } else {
      Get.to(
        ApplausescreenView(),
        binding: ApplausescreenBinding(),
      );
    }
  }
}
