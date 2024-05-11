import 'package:get/get.dart';

class Q6Controller extends GetxController{

  final RxInt selectedRadio = 1.obs;
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