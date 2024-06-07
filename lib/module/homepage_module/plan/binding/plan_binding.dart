import 'package:diet_app/module/homepage_module/plan/controller/plan_controller.dart';
import 'package:get/get.dart';

class PlanBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(()=>PlanController());
  }
}