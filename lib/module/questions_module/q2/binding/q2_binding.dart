import 'package:diet_app/module/questions_module/q2/controller/q2_controller.dart';
import 'package:get/get.dart';

class Q2Binding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => Q2Controller());
  }

}




