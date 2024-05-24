import 'package:diet_app/module/payment_module/subscriptionmethod/controller/subsmethod_controller.dart';
import 'package:get/get.dart';

class SubsmethodBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => SubsmethodController());
  }

}
// SubsmethodWidget(
//
// text: "G pay",
// ),

//
//
