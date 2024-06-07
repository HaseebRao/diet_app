import 'package:diet_app/module/homepage_module/lowcarbdiet/controller/lowercarbdiet_controller.dart';
import 'package:get/get.dart';

class LowcarbdietBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>LowercarbdietController());
  }

}