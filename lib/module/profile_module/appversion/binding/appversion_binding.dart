import 'package:diet_app/module/profile_module/appversion/controller/appversion_controller.dart';
import 'package:get/get.dart';

class AppversionBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => AppversionController());
  }
}