import 'package:diet_app/module/homepage_module/cheatfood/controller/cheatfood_controller.dart';
import 'package:get/get.dart';

class CheatfoodBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(()=>CheatfoodController());
  }

}