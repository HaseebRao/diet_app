import 'package:diet_app/module/questions_module/applausescreen/controller/applausescreen_controller.dart';
import 'package:get/get.dart';

class ApplausescreenBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => ApplausescreenController());
  }

}