import 'package:get/get.dart';

import '../../newpassword/binding/newpassword_binding.dart';
import '../../newpassword/view/newpassword_view.dart';

class VerifyController extends GetxController {
  var pin = ''.obs;
  void selectGender() {
    if (pin.isEmpty) {
      Get.snackbar("Error", "Please enter otp code");
    } else {
      Get.to(
        NewpasswordView(),
        binding: NewpasswordBinding(),
      );
    }
  }
}
