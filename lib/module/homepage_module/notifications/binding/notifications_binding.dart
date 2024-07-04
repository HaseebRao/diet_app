import 'package:diet_app/module/homepage_module/notifications/controller/notifications_controller.dart';
import 'package:get/get.dart';

class NotificationsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsController());
  }
}
