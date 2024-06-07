import 'package:diet_app/module/homepage_module/paleodiet/controller/paleodiet_controller.dart';
import 'package:get/get.dart';

class PaleodietBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(()=>PaleodietController());
  }

}
