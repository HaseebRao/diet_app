import 'package:diet_app/module/profile_module/reminders/controllers/reminders_controllers.dart';
import 'package:get/get.dart';

class RemindersBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => MyCheckboxController());
  }

}