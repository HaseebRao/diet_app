import 'package:get/get.dart';

import '../controller/viewplan_controller.dart';

class ViewplanBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=> ViewplanController());
  }
  
}