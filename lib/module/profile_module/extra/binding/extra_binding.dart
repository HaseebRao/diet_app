import 'package:diet_app/module/profile_module/extra/controller/extra_controller.dart';
import 'package:get/get.dart';

class ExtraBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RadioListController());
  }

}