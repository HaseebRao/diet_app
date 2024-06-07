import 'package:diet_app/module/homepage_module/homepage/controller/homepage_controller.dart';
import 'package:get/get.dart';

class HomepageBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => HomepageController());
  }
}
// boxShadow: [
//   BoxShadow(
//     color: Colors.grey.withOpacity(0.5),
//     spreadRadius: 5,
//     blurRadius: 7,
//     offset: Offset(0, 3),
//   ),
// ],