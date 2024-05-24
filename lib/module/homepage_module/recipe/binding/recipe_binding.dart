import 'package:diet_app/module/homepage_module/recipe/controller/recipe_controller.dart';
import 'package:get/get.dart';

class RecipeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeController());
  }

}
