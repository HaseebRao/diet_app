import 'package:diet_app/module/homepage_module/runningpagestart/controller/runningpagestart_controller.dart';
import 'package:get/get.dart';

class RunningpagestartBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>RunningpagestartController());
  }

}