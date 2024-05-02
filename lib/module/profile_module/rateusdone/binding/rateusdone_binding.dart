import 'package:diet_app/module/profile_module/rateusdone/controller/rateusdone_controller.dart';
import 'package:get/get.dart';

class RateusdoneBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => RateusdoneController());
  }

}