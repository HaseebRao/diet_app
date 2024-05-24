import 'package:diet_app/module/profile_module/termofservice/controller/termofservice_controller.dart';
import 'package:get/get.dart';

class TermofserviceBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => TermofservieController());
  }

}