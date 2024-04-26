import 'package:diet_app/module/authentication_module/wellcome/controller/wellcome_controller.dart';
import 'package:get/get.dart';

class WellcomeBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => WellcomeController());
  }

}