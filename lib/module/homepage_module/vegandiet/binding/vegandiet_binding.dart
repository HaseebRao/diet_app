import 'package:diet_app/module/homepage_module/vegandiet/controller/vegandiet_controller.dart';
import 'package:get/get.dart';

class VegandietBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>VegandietController());
  }

}