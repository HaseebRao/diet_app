import 'package:diet_app/module/homepage_module/plan/controller/plan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class PlanView extends GetView<PlanController>{
  @override
  Widget build(BuildContext context) {
  return
   Scaffold(
     body:Container(

       height: 690.h,
       child: Stack(
         alignment: Alignment.bottomLeft,
         children: [
           Align(
             alignment: Alignment.topLeft,
             child: Container(
               height: 240.h,
               width: 360.w,
               decoration: BoxDecoration(

                 image: DecorationImage(
                   image: AssetImage('assets/images/plan.png'),
                   fit: BoxFit.cover, // This will ensure the image covers the entire container
                 ),
               ),
               child: Padding(
                 padding: EdgeInsets.only(top: 130.h,left: 25.w),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       Apptexts.plan,
                       style: TextStyle(
                           fontSize: 22.sp,
                           color: AppColors.whiteTextColor,
                           fontWeight: FontWeight.w700,
                         fontFamily: ApptextStyle.fontfamily,),
                     ),
                     SizedBox(height: 1.h,),
                     Text(
                       Apptexts.planweeks,
                       style: TextStyle(
                           fontSize: 14.5.sp,
                           color: AppColors.whiteTextColor,
                           fontWeight: FontWeight.w400,
                         fontFamily: ApptextStyle.fontfamily,),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           Container(
             height: 495.h,
             width: 360.w,
             decoration: BoxDecoration(
           color: AppColors.whiteTextColor,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(25.0),
                 topRight: Radius.circular(25.0),
               ),
             ),
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 20.w),
               child: Column(
                 crossAxisAlignment:CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 18.h,),
                   Text(
                     Apptexts.description,
                     style: TextStyle(
                         fontSize: 14.sp,
                         color: AppColors.blackTextColor,
                         fontWeight: FontWeight.w600,
                       fontFamily: ApptextStyle.fontfamily,),
                   ),
                   SizedBox(height: 6.h,),
                   Text(
                     textAlign: TextAlign.start,
                     Apptexts.planDummyText,
                     style: TextStyle(
                       height: 1.6.h,
                         fontSize: 10.sp,
                       color: AppColors.blackTextColor,
                         fontWeight: FontWeight.w400,
                       fontFamily: ApptextStyle.fontfamily,),
                   ),
                   SizedBox(height: 4.h,),
                   SizedBox(height: 160.h,
                       child:
                       ListView.builder(
                         padding: EdgeInsets.all(0),
                           scrollDirection: Axis.vertical,
                           itemCount:6,
                           itemBuilder: (context, index){
                             return Row(

                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding:  EdgeInsets.only(top: 8.h),
                                   child: Container(
                                     height: 4.h,
                                     width: 4.w,
                                     decoration: BoxDecoration(
                                         color: Colors.black,
                                         borderRadius: BorderRadius.circular(100)
                                     ),
                                   ),
                                 ),
                                 SizedBox(width: 8.w,),
                                 SizedBox(
                                   width: 300.w,
                                   child: Text(
                                     controller.texts[index],
                                     style: TextStyle(
                                         height: 1.6.h,
                                         fontSize: 10.sp,
                                         color: AppColors.blackTextColor,
                                         fontWeight: FontWeight.w400,
                                       fontFamily: ApptextStyle.fontfamily,),
                                   ),
                                 ),
                               ],
                             );
                           }) ),
                   SizedBox(height: 20.h,),
                   Obx(() => GestureDetector(
                     onTap: () => controller.updateSelectedIndex(0),
                     child: Container(
                       height: 46.h,
                       decoration: BoxDecoration(
                         color: controller.selectedIndex.value == 0 ? AppColors.blueBtnColor : Colors.transparent,
                         borderRadius: BorderRadius.circular(8),
                         border: Border.all(color: AppColors.Profilecircle),
                       ),
                       child: Center(
                         child: Text(
                           textAlign: TextAlign.center,
                           Apptexts.viewplan,
                           style: TextStyle(
                             fontSize: 15.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: controller.selectedIndex.value == 0 ? AppColors.whiteTextColor : AppColors.Profilecircle,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ),
                     ),
                   )),
                   SizedBox(height: 15.h,),
                   Obx(() => GestureDetector(
                     onTap: () => controller.updateSelectedIndex(1),
                     child: Container(
                       height: 46.h,
                       decoration: BoxDecoration(
                         color: controller.selectedIndex.value == 1 ? AppColors.blueBtnColor : Colors.transparent,
                         borderRadius: BorderRadius.circular(8),
                         border: Border.all(color: AppColors.Profilecircle),
                       ),
                       child: Center(
                         child: Text(
                           textAlign: TextAlign.center,
                           Apptexts.activate,
                           style: TextStyle(
                             fontSize: 15.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: controller.selectedIndex.value == 1 ? AppColors.whiteTextColor : AppColors.Profilecircle,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ),
                     ),
                   )),
                 ],
               ),
             ),
           ),


         ],
       ),
     ),
   );
  }

}