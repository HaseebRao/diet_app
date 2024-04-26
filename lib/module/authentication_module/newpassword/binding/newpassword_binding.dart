import 'package:diet_app/module/authentication_module/newpassword/controller/newpassword_controller.dart';
import 'package:get/get.dart';

class NewpasswordBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => NewpasswordController());
  }

}