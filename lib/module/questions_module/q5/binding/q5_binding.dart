import 'package:diet_app/module/questions_module/q5/controller/q5_controller.dart';
import 'package:get/get.dart';

class Q5Binding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => Q5Controller());
  }

}


//
// Center(
// child: Container(
// height: 45.h,
// width: 150.w,
// decoration: BoxDecoration(
// border: Border.all(
// color: AppColors.backcolor.withOpacity(0.7),
// width: 1.w,
// ),
// ),
// child: Center(
// child: Obx(() {
// final selectedHour = controller.selectedHour.value;
// final selectedMinute = controller.selectedMinute.value;
// final selectedWeightUnitIndex =
// controller.selectedWeightUnitIndex.value;
//
// int totalInches;
// if (selectedWeightUnitIndex == 0) {
// // Convert feet and inches to inches
// totalInches = selectedHour * 12 + selectedMinute;
// } else {
// // Total inches directly
// totalInches = selectedHour * 12 + selectedMinute;
// }
//
// return Text(
// '$totalInches in',
// style: TextStyle(
// fontSize: 22.0,
// height: 1.5,
// fontWeight: FontWeight.w500,
// color: AppColors.blueBtnColor,
// ),
// );
// }),
// ),
// ),
// ),



