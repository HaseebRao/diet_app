import 'package:diet_app/module/questions_module/q6/controller/q6_controller.dart';
import 'package:get/get.dart';

class Q6Binding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => Q6Controller());
  }

}