import 'package:diet_app/module/profile_module/rateusdone/controller/rateusdone_controller.dart';
import 'package:get/get.dart';

class RateusdoneBinding implements Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => RateusdoneController());
  }

}



// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// Apptexts.thanks,
// style: TextStyle(
// fontSize: 19.sp,
// fontFamily: ApptextStyle.fontfamily,
// color: AppColors.blackTextColor,
// fontWeight: FontWeight.w700,
// ),
// ),
// SizedBox(
// width: 6.w,
// ),
// Container(
// height: 35,
// width: 35,
// child: Image.asset(
// 'assets/images/emojii.png',
// fit: BoxFit.cover,
// ),
// ),
// ],
// ),
// ],
// ),