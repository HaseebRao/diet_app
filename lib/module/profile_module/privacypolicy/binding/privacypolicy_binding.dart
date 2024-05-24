import 'package:diet_app/module/profile_module/privacypolicy/controller/privacypolicy_controller.dart';
import 'package:get/get.dart';

class PrivacypolicyBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => PrivacypolicyController());
  }
}