import 'package:diet_app/module/profile_module/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() =>ProfileController());
  }

}