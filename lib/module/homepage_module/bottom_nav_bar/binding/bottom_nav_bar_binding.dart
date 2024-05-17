import 'package:diet_app/module/homepage_module/bottom_nav_bar/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavBarBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
  }

}