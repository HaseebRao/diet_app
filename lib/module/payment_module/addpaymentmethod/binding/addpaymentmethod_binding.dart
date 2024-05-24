import 'package:diet_app/module/payment_module/addpaymentmethod/controller/addpaymentmethod_controller.dart';
import 'package:get/get.dart';

class AddpaymentmethodBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => AddpaymentmethodController());
  }

}