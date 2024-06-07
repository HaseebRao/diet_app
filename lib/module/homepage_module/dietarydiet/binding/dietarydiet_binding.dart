import 'package:diet_app/module/homepage_module/dietarydiet/controller/dietarydiet_controller.dart';
import 'package:get/get.dart';

class DietarydietBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(()=>DietarydietController());
  }

}