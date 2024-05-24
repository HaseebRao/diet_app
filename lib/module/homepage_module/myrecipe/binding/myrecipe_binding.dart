import 'package:diet_app/module/homepage_module/myrecipe/controller/myrecipe_controller.dart';
import 'package:get/get.dart';

class MyrecipeBinding implements Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => MyrecipeController());
  }

}