import 'package:diet_app/module/profile_module/Apperance/controller/apperance_controller.dart';
import 'package:get/get.dart';

class ApperanceBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ApperanceController());
  }
}