import 'package:diet_app/module/profile_module/rateus/controller/rateus_controller.dart';
import 'package:get/get.dart';

class RateusBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => IconController());
  }

}