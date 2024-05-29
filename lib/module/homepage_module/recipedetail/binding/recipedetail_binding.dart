import 'package:diet_app/module/homepage_module/recipedetail/controller/recipedetail_controller.dart';
import 'package:get/get.dart';

class RecipedetailBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>RecipedetailController());
  }

}