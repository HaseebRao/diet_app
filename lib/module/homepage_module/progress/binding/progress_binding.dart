import 'package:diet_app/module/homepage_module/progress/controller/progress_controller.dart';
import 'package:get/get.dart';

class ProgressBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProgressController());
  }

}
