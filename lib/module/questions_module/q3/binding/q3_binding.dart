import 'package:diet_app/module/questions_module/q3/controller/q3_controller.dart';
import 'package:get/get.dart';

class Q3Binding implements Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => Q3Controller());
  }
}