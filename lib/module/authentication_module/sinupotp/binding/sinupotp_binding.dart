import 'package:diet_app/module/authentication_module/sinupotp/controller/sinupotp_controller.dart';
import 'package:get/get.dart';

class SinupotpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SinupotpController());
  }
}
