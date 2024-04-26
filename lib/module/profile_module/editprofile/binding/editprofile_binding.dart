import 'package:diet_app/module/profile_module/editprofile/controller/editprofile_controller.dart';
import 'package:get/get.dart';

class EditprofileBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => EditprofileController());
  }

}
