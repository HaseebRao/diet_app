import 'package:diet_app/module/homepage_module/vegetariandiet/controller/vegetariandiet_controller.dart';
import 'package:get/get.dart';

class VegetariandietBinding implements  Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>VegetariandietController());
  }

}