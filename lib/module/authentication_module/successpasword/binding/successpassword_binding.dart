import 'package:diet_app/module/authentication_module/successpasword/controller/successpassword_controller.dart';
import 'package:get/get.dart';

class SuccesspasswordBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SuccesspasswordController());
  }

}