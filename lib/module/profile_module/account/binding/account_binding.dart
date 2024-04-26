import 'package:diet_app/module/profile_module/account/controller/account_controller.dart';
import 'package:get/get.dart';

class AccountBinding  implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => AccountController());
  }

}