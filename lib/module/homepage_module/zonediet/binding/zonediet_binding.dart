import 'package:diet_app/module/homepage_module/zonediet/controller/zonediet_controller.dart';
import 'package:get/get.dart';

class ZonedietBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>ZonedietController());
  }

}