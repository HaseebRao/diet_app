import 'package:diet_app/module/questions_module/q4/controller/q4_controller.dart';
import 'package:get/get.dart';

class Q4Binding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => Q4Controller());
  }

}