// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// import '../../../../common/app_assets.dart';
// import '../../../../common/app_colors.dart';
// import '../../../../common/app_textstyle.dart';
// import '../controller/subscription_controller.dart';
//
// class Subscriptionwidget extends StatelessWidget {
//   final SubscriptionController checkboxController =
//   Get.put(SubscriptionController());
//   String? text;
//   IconData? icon;
//   Color? color;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           height: 54.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: AppColors.Profiletextes, width: 1.h),
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               children: [
//                 Obx(
//                       () => Checkbox(
//                     side: BorderSide(color: AppColors.Profilecircle),
//                     activeColor: AppColors.Profilecircle,
//                     tristate: true,
//                     value: checkboxController.isChecked[0],
//                     onChanged: (value) {
//                       checkboxController.toggleCheckbox(0, value);
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4.w,
//                 ),
//                 Text(
//                   text ??
//                       'Monthly:\$ 999.00', // Provide a default value if text is null
//                   style: TextStyle(
//                     fontSize: 12.5.sp,
//                     fontFamily: ApptextStyle.fontfamily,
//                     color: AppColors.textsxolor,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 Spacer(),
//
//               ],
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 10.h,
//         ),
//         Container(
//           height: 54.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: AppColors.Profiletextes, width: 1.h),
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Row(
//               children: [
//                 Obx(
//                       () => Checkbox(
//                     side: BorderSide(color: AppColors.Profilecircle),
//                     activeColor: AppColors.Profilecircle,
//                     tristate: true,
//                     value: checkboxController.isChecked[1],
//                     onChanged: (value) {
//                       checkboxController.toggleCheckbox(1, value);
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4.w,
//                 ),
//                 Center(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         text ?? '6 Months:\$ 2,999.00', // Provide a default value if text is null
//                         style: TextStyle(
//                           fontSize: 12.5.sp,
//                           fontFamily: ApptextStyle.fontfamily,
//                           color: AppColors.textsxolor,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       Text(
//                         text ?? 'Only \$ 499.00/month', // Provide a default value if text is null
//                         style: TextStyle(
//                           fontSize: 9.sp,
//                           fontFamily: ApptextStyle.fontfamily,
//                           color: AppColors.textsxolor,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//
//               ],
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 10.h,
//         ),
//         Container(
//           height: 54.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: AppColors.Profiletextes, width: 1.h),
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child:Row(
//               children: [
//                 Obx(
//                       () => Checkbox(
//                     side: BorderSide(color: AppColors.Profilecircle),
//                     activeColor: AppColors.Profilecircle,
//                     tristate: true,
//                     value: checkboxController.isChecked[2],
//                     onChanged: (value) {
//                       checkboxController.toggleCheckbox(2, value);
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   width: 4.w,
//                 ),
//                 Center(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         text ?? '6 Months:\$ 2,999.00', // Provide a default value if text is null
//                         style: TextStyle(
//                           fontSize: 12.5.sp,
//                           fontFamily: ApptextStyle.fontfamily,
//                           color: AppColors.textsxolor,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       Text(
//                         text ?? 'Only \$ 499.00/month', // Provide a default value if text is null
//                         style: TextStyle(
//                           fontSize: 9.sp,
//                           fontFamily: ApptextStyle.fontfamily,
//                           color: AppColors.textsxolor,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Spacer(),
//
//               ],
//             ),
//           ),
//         ),
//
//
//       ],
//     );
//   }
// }
// void main() {
//
//   TextModel model = TextModel('First Text', 'Second Text');
//
//
//   print(model.text1);
//   print(model.text2);
// }
// class TextModel {
//   final String text1;
//   final String text2;
//
//   TextModel(this.text1, this.text2);
// }
