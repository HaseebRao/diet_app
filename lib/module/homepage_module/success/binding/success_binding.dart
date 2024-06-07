import 'package:diet_app/module/homepage_module/success/controller/success_controller.dart';
import 'package:get/get.dart';

class SuccesssBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessController());
  }

}