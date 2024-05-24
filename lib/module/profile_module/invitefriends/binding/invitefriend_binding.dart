import 'package:diet_app/module/profile_module/invitefriends/controller/invitefriends_controller.dart';
import 'package:get/get.dart';

class InvitefriendBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => InvitefriendsController());
  }

}