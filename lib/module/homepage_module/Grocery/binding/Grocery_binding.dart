import 'package:diet_app/module/homepage_module/Grocery/controller/Grocery_controller.dart';
import 'package:get/get.dart';

class GroceryBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>GroceryController());
  }

}