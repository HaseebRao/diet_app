import 'package:diet_app/module/homepage_module/runningpageend/controller/runningpageend_controller.dart';
import 'package:get/get.dart';

class RunningpageendBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>RunningpageendController());
  }

}