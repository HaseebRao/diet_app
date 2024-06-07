import 'package:diet_app/module/homepage_module/mediterraneandiet/controller/mediterraneandiet_controller.dart';
import 'package:get/get.dart';

class MediterraneandietBinding implements Bindings{
  @override
  void dependencies() {
 Get.lazyPut(()=>MediterraneandietController());
  }

}