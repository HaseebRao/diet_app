import 'package:diet_app/module/authentication_module/login/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => LoginController());
  }
}
