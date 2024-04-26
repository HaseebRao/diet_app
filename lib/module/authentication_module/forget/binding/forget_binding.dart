import 'package:diet_app/module/authentication_module/forget/controller/forget_controller.dart';
import 'package:get/get.dart';

class ForgetBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ForgerController());
  }

}