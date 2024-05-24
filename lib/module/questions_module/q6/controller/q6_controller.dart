import 'package:get/get.dart';

class Q6Controller extends GetxController{

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
}