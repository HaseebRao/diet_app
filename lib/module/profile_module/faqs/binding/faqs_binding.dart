import 'package:diet_app/module/profile_module/faqs/controller/faqs-controller.dart';
import 'package:get/get.dart';

class FaqsBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => FaqsController());
  }
}