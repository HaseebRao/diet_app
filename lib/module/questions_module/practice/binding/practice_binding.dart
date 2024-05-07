import 'package:diet_app/module/questions_module/practice/controller/practice_controller.dart';
import 'package:get/get.dart';

class PracticeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PracticeController());
  }

}

//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:wheel_picker/wheel_picker.dart';
//
// import '../../../../common/app_colors.dart';
// import '../binding/practice_binding.dart';
//
// class PrcticeView extends GetView<PracticeBinding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: WheelPickerExample(),
//         ),
//       ),
//     );
//   }
// }
//
// class WheelPickerExample extends StatefulWidget {
//   const WheelPickerExample({Key? key}) : super(key: key);
//
//   @override
//   _WheelPickerExampleState createState() => _WheelPickerExampleState();
// }
//
// class _WheelPickerExampleState extends State<WheelPickerExample> {
//   final now = TimeOfDay.now();
//   late final hoursWheel = WheelPickerController(
//     itemCount: 500,
//     initialIndex: now.hour % 12,
//   );
//   late final minutesWheel = WheelPickerController(
//     itemCount: 10,
//     initialIndex: now.minute,
//     mounts: [hoursWheel],
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     const textStyle = TextStyle(fontSize: 22.0, height: 1.5,    fontWeight: FontWeight.w500,);
//     final wheelStyle = WheelPickerStyle(
//       size: 200,
//       itemExtent: 50, // Adjusted item extent for better visibility
//       squeeze: 1.25,
//       diameterRatio: .8,
//       surroundingOpacity: .25,
//       magnification: 1.2,
//
//     );
//
//     Widget itemBuilder(BuildContext context, int index) {
//       return Text("$index".padLeft(2, ), style: textStyle);
//     }
//
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             WheelPicker(
//               builder: itemBuilder,
//               controller: hoursWheel,
//               looping: false,
//               style: wheelStyle,
//               selectedIndexColor: Colors.black,
//             ),
//             const Text("   :   ", style: textStyle),
//             WheelPicker(
//               builder: itemBuilder,
//               controller: minutesWheel,
//               style: wheelStyle,
//               enableTap: true,
//               selectedIndexColor: Colors.black,
//             ),
//             SizedBox(width: 40.w),
//             WheelPicker(
//               itemCount: 2,
//               builder: (context, index) {
//                 return Text(["Kg", "Lb"][index], style: textStyle);
//               },
//               initialIndex: (now.period == DayPeriod.am) ? 0 : 1,
//               looping: false,
//
//               style: wheelStyle.copyWith(
//                 shiftAnimationStyle: const WheelShiftAnimationStyle(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.bounceOut,
//
//                 ),
//               ),
//             ),
//           ],
//         ),
//
//
//       ],
//     );
//   }
//
//   @override
//   void dispose() {
//     hoursWheel.dispose();
//     minutesWheel.dispose();
//     super.dispose();
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:wheel_picker/wheel_picker.dart';
//
// import '../../../../common/app_colors.dart';
// import '../controller/practice_controller.dart'; // Import your PracticeController
//
// class PrcticeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: GetBuilder<PracticeController>(
//             builder: (controller) => WheelPickerExample(controller: controller),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class WheelPickerExample extends StatefulWidget {
//   final PracticeController controller;
//
//   const WheelPickerExample({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   _WheelPickerExampleState createState() => _WheelPickerExampleState();
// }
//
// class _WheelPickerExampleState extends State<WheelPickerExample> {
//   final now = TimeOfDay.now();
//   int selectedHour = TimeOfDay.now().hour % 12;
//   int selectedMinute = TimeOfDay.now().minute;
//
//   int selectedWeightUnitIndex = (TimeOfDay.now().period == DayPeriod.am) ? 0 : 1;
//
//   void handleWeightUnitChange(int index) {
//     setState(() {
//       selectedWeightUnitIndex = index;
//     });
//   }
//
//   // Callback method for hour change
//   void handleHourChange(int hour) {
//     setState(() {
//       selectedHour = hour;
//     });
//   }
//
//   // Callback method for minute change
//   void handleMinuteChange(int minute) {
//     setState(() {
//       selectedMinute = minute;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const textStyle = TextStyle(fontSize: 22.0, height: 1.5, fontWeight: FontWeight.w500);
//     final wheelStyle = WheelPickerStyle(
//       size: 200,
//       itemExtent: 50, // Adjusted item extent for better visibility
//       squeeze: 1.25,
//       diameterRatio: .8,
//       surroundingOpacity: .25,
//       magnification: 1.2,
//     );
//
//     Widget itemBuilder(BuildContext context, int index) {
//       return Text("$index".padLeft(2, '0'), style: textStyle);
//     }
//
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             WheelPicker(
//               builder: itemBuilder,
//               itemCount: 12, // Change itemCount to 12 for hours
//               initialIndex: selectedHour,
//               looping: false,
//               style: wheelStyle,
//               selectedIndexColor: Colors.black,
//               onIndexChanged: handleHourChange,
//             ),
//             const Text("   :   ", style: textStyle),
//             WheelPicker(
//               builder: itemBuilder,
//               itemCount: 60, // Change itemCount to 60 for minutes
//               initialIndex: selectedMinute,
//               looping: false,
//               style: wheelStyle,
//               enableTap: true,
//               selectedIndexColor: Colors.black,
//               onIndexChanged: handleMinuteChange,
//             ),
//             SizedBox(width: 40.w),
//             WheelPicker(
//               itemCount: 2,
//               builder: (context, index) {
//                 return Text(["Kg", "Lb"][index], style: textStyle);
//               },
//               initialIndex: selectedWeightUnitIndex,
//               looping: false,
//               style: wheelStyle.copyWith(
//                 shiftAnimationStyle: const WheelShiftAnimationStyle(
//                   duration: Duration(seconds: 1),
//                   curve: Curves.bounceOut,
//                 ),
//               ),
//               onIndexChanged: handleWeightUnitChange,
//             ),
//           ],
//         ),
//         SizedBox(height: 20.h), // Add some spacing
//         Container(
//           height: 40.h,
//           width: 130.w,
//           decoration: BoxDecoration(
//             border: Border.all(color: AppColors.Profilecircle, width: 2.w),
//           ),
//           child: Center(
//             child: Text(
//               '${selectedHour % 12}:${selectedMinute.toString().padLeft(2, '0')}', // Display the selected time
//               style: textStyle,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }







//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:wheel_picker/wheel_picker.dart';
//
// import '../../../../common/app_assets.dart';
// import '../../../../common/app_colors.dart';
// import '../../../../common/app_text.dart';
// import '../../../../common/app_textstyle.dart';
// import '../controller/practice_controller.dart'; // Import your PracticeController
//
// class PrcticeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:  AppColors.whiteTextColor,
//
//       body: Center(
//         child: GetBuilder<PracticeController>(
//           builder: (controller) => WheelPickerExample(controller: controller),
//         ),
//       ),
//     );
//   }
// }
//
// class WheelPickerExample extends StatefulWidget {
//   final PracticeController controller;
//
//   const WheelPickerExample({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   _WheelPickerExampleState createState() => _WheelPickerExampleState();
// }
//
// class _WheelPickerExampleState extends State<WheelPickerExample> {
//   final now = TimeOfDay.now();
//   int selectedHour = TimeOfDay.now().hour % 12;
//   int selectedMinute = TimeOfDay.now().minute;
//
//   int selectedWeightUnitIndex = (TimeOfDay.now().period == DayPeriod.am) ? 0 : 1;
//
//   void handleWeightUnitChange(int index) {
//     setState(() {
//       selectedWeightUnitIndex = index;
//     });
//   }
//
//   // Callback method for hour change
//   void handleHourChange(int hour) {
//     setState(() {
//       selectedHour = hour;
//     });
//   }
//
//   // Callback method for minute change
//   void handleMinuteChange(int minute) {
//     setState(() {
//       selectedMinute = minute;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const textStyle = TextStyle(fontSize: 22.0, height: 1.5, fontWeight: FontWeight.w500,color: AppColors.blueBtnColor);
//     final wheelStyle = WheelPickerStyle(
//       size: 200,
//       itemExtent: 50, // Adjusted item extent for better visibility
//       squeeze: 1.25,
//       diameterRatio: .8,
//       surroundingOpacity: .25,
//       magnification: 1.2,
//     );
//
//     Widget itemBuilder(BuildContext context, int index) {
//       return Text("$index".padLeft(2, ), style: textStyle);
//     }
//
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 21.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 47.h,),
//           SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 Apptexts.textno,
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   fontFamily: ApptextStyle.fontfamily,
//                   color:AppColors.blackTextColor,
//                   fontWeight: FontWeight.w700,
//                 ),),
//             ],
//           ),
//           SizedBox(height: 8.h,),
//           LinearProgressIndicator(
//             value: 0.1, // 20% filled
//             minHeight: 11.h,
//             backgroundColor: Colors.grey[300],
//             borderRadius: BorderRadius.circular(10),
//             valueColor: AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
//           ),
//           SizedBox(height: 75.h,),
//           Center(
//             child: Text(
//               textAlign: TextAlign.center,
//               Apptexts.weight,
//               style: TextStyle(
//                 fontSize: 21.sp,
//                 fontFamily: ApptextStyle.fontfamily,
//                 color:AppColors.blackTextColor,
//                 fontWeight: FontWeight.w700,
//               ),),
//           ),
//           SizedBox(height: 40.h,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height:210.h,
//                 width:240.w,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(42),
//                   color: AppColors.whiteTextColor,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.4),
//                       spreadRadius: 3,
//                       blurRadius: 5,
//                       offset: Offset(0, 2), // changes position of shadow
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     WheelPicker(
//                       builder: itemBuilder,
//                       itemCount: 500, // Increase itemCount to 500 for hours
//                       initialIndex: selectedHour,
//                       looping: false,
//                       style: wheelStyle,
//                       selectedIndexColor: Colors.black,
//                       onIndexChanged: handleHourChange,
//                     ),
//                     const Text("   :   ", style: textStyle),
//                     WheelPicker(
//                       builder: itemBuilder,
//                       itemCount: 10, // Change itemCount to 10 for minutes
//                       initialIndex: selectedMinute,
//                       looping: false,
//                       style: wheelStyle,
//                       enableTap: true,
//                       selectedIndexColor: Colors.black,
//                       onIndexChanged: handleMinuteChange,
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(width: 20.w),
//               WheelPicker(
//                 itemCount: 2,
//                 builder: (context, index) {
//                   return Text(["Kg", "Lb"][index], style: textStyle);
//                 },
//                 initialIndex: selectedWeightUnitIndex,
//                 looping: false,
//                 style: wheelStyle.copyWith(
//                   shiftAnimationStyle: const WheelShiftAnimationStyle(
//                     duration: Duration(seconds: 1),
//                     curve: Curves.bounceOut,
//                   ),
//                 ),
//                 onIndexChanged: handleWeightUnitChange,
//               ),
//             ],
//           ),
//           SizedBox(height: 45.h), // Add some spacing
//           Center(
//             child: Container(
//               height: 45.h,
//               width: 160.w,
//               decoration: BoxDecoration(
//                 border: Border.all(color: AppColors.backcolor, width: 1.w),
//               ),
//               child: Center(
//                 child: Text(
//                   '${selectedWeightUnitIndex == 0 ? selectedHour.toString().padLeft(2, ) + ':' + selectedMinute.toString().padLeft(2, '0') + " Kg" : (selectedHour * 2.20462).toStringAsFixed(2) + " Lb"}',
//                   style: textStyle.copyWith(color: AppColors.blueBtnColor),
//                 ),
//
//               ),
//             ),
//           ),
//           SizedBox(height: 55.h), // Add some spacing
//           Container(
//             height: 49.h,
//             decoration: BoxDecoration(
//               color: AppColors.blueBtnColor,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child:  Center(
//               child: Text(
//                 textAlign: TextAlign.center,
//                 Apptexts.continues,
//                 style: TextStyle(
//                   fontSize: 15.sp,
//                   fontFamily: ApptextStyle.fontfamily,
//                   color:AppColors.whiteTextColor,
//                   fontWeight: FontWeight.w600,
//                 ),),
//             ),
//           ),
//
//
//         ],
//       ),
//     );
//   }
// }
