import 'package:diet_app/module/profile_module/changepassword/controller/changepassword_controller.dart';
import 'package:get/get.dart';

class ChangepasswordBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => ChangepasswordController());
  }

}