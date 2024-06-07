import 'package:diet_app/module/homepage_module/diet/controller/diet_controller.dart';
import 'package:get/get.dart';

class DietBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>DietController());
  }

}