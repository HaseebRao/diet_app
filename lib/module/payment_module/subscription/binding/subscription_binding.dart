import 'package:diet_app/module/payment_module/subscription/controller/subscription_controller.dart';
import 'package:get/get.dart';

class SubscriptionBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => SubscriptionController());
  }

}