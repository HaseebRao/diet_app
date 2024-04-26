import 'package:get/get.dart';

class AccountController  extends GetxController{
  RxBool isNotificationSwitched = true.obs;

  void toggleNotificationSwitch() {
    isNotificationSwitched.value = !isNotificationSwitched.value;
  }
}