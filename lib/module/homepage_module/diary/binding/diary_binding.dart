import 'package:diet_app/module/homepage_module/diary/controller/diary_controller.dart';
import 'package:get/get.dart';

class DiaryBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>DiaryController());
  }

}
// SizedBox(
// width: 40.w, // Assuming you're using screen_util for responsive width
// height: 313.h, // Assuming you're using screen_util for responsive height
// child: ListView.builder(
// physics: NeverScrollableScrollPhysics(),
// itemCount: 4,
// scrollDirection: Axis.vertical,
// itemBuilder: (context, index) {
// return Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// GestureDetector(
// onTap: () => controller.toggleFill(index),
// child: Obx(() {
// return Container(
// height: 19.h,
// width: 20.w,
// decoration: BoxDecoration(
// border: Border.all(color: AppColors.yellowdark),
// borderRadius: BorderRadius.circular(100),
// ),
// child: Padding(
// padding: const EdgeInsets.all(4.0),
// child: Container(
// height: 14.h,
// width: 14.w,
// decoration: BoxDecoration(
// color: controller.fillStates[index].value
// ? AppColors.yellowdark
//     : Colors.transparent,
// borderRadius: BorderRadius.circular(100),
// ),
// ),
// ),
// );
// }),
// ),
// if (index < controller.fillStates.length - 1)
// SizedBox(
// height: 53.h,
// child: DottedLine(
// direction: Axis.vertical,
// alignment: WrapAlignment.center,
// lineLength: double.infinity,
// lineThickness: 1.0,
// dashColor: AppColors.yellowdark,
// dashRadius: 0.0,
// dashGapLength: 3.0,
// dashGapColor: Colors.transparent,
// dashGapRadius: 0.0,
// ),
// )
// else
// SizedBox(
// height: 42.h,
// child: DottedLine(
// direction: Axis.vertical,
// alignment: WrapAlignment.center,
// lineLength: double.infinity,
// lineThickness: 1.0,
// dashColor: Colors.transparent,
// dashRadius: 0.0,
// dashGapLength: 3.0,
// dashGapColor: Colors.transparent,
// dashGapRadius: 0.0,
// ),
// )
// ],
// );
// },
// ),
// );