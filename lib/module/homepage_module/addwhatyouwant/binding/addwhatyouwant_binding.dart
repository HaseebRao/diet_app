import 'package:diet_app/module/homepage_module/addwhatyouwant/controller/addwhatyouwant_controller.dart';
import 'package:get/get.dart';

class AddwhatyouwantBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>AddwhatyouwantController());
  }

}