import 'package:diet_app/module/questions_module/q5/controller/q5_controller.dart';
import 'package:get/get.dart';

class Q5Binding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => Q5Controller());
  }

}