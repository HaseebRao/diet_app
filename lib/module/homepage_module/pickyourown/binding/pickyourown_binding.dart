import 'package:diet_app/module/homepage_module/pickyourown/controller/pickyourown_controller.dart';
import 'package:get/get.dart';

class PickyourownBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>PickyourownController());
  }

}