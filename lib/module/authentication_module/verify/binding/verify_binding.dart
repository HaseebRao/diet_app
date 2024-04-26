import 'package:diet_app/module/authentication_module/verify/controller/verify_controller.dart';
import 'package:get/get.dart';

class VerifyBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => VerifyController());
  }

}