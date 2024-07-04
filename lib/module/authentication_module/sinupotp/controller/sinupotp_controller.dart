import 'package:diet_app/module/authentication_module/wellcome/view/wellcome_view.dart';
import 'package:get/get.dart';

class SinupotpController extends GetxController {
  var pin = ''.obs;
  void selectGender() {
    if (pin.isEmpty) {
      Get.snackbar("Error", "Please enter otp code");
    } else {
      Get.to(
        WellcomeView(),
      );
    }
  }
}
