 import 'package:diet_app/module/homepage_module/addrecipe/controller/addrecipe_controller.dart';
import 'package:get/get.dart';

class AddrecipesBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>AddrecipesController());
  }
}