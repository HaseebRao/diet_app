import 'package:diet_app/module/homepage_module/weeklyshows/controller/weeklyshows_controller.dart';
import 'package:get/get.dart';

class WeeklyshowsBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>WeeklyshowsController());
  }

}