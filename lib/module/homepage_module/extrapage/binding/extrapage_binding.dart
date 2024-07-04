import 'package:diet_app/module/homepage_module/extrapage/controller/extrapage_controller.dart';
import 'package:get/get.dart';

class ExtrapageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExtrapageController());
  }
}
