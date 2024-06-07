import 'package:diet_app/module/homepage_module/waterintake/controller/waterintake_controller.dart';
import 'package:get/get.dart';

class WateintakeBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>WaterintakeController());
  }

}