import 'package:diet_app/module/profile_module/helpcenter/controller/helpcenter_controller.dart';
import 'package:get/get.dart';

class HelpcenterBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HelpcenterController());
  }

}