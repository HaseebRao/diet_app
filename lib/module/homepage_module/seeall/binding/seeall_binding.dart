import 'package:diet_app/module/homepage_module/seeall/controller/seeall_controller.dart';
import 'package:get/get.dart';

class SeeAllBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SeeAllController());
  }

}