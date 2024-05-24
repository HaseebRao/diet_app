import 'package:diet_app/module/questions_module/helppage/controller/helppage_controller.dart';
import 'package:get/get.dart';

class HelpPageBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HelpPageController());
  }
}