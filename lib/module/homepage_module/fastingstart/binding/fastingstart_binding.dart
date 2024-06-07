import 'package:diet_app/module/homepage_module/fastingstart/controller/fastingstart_controller.dart';
import 'package:get/get.dart';

class FastingstartBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>FastingstartController());
  }

}