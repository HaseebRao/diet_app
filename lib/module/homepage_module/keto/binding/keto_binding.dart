import 'package:diet_app/module/homepage_module/keto/controller/keto_controller.dart';
import 'package:get/get.dart';

class KetoBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>KetoController());
  }

}