import 'package:diet_app/module/homepage_module/weeklyshows/controller/weeklyshows_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class WeeklyshowsView extends GetView<WeeklyshowsController>{
  @override
  Widget build(BuildContext context) {
   return
 Scaffold(
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 10.w),
     child: Column(
       children: [
         SizedBox(height: 45.h,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(onPressed: () => Get.back(), icon: SvgPicture.asset(Appasset.Arrowdiet, height: 15.8.h, color: AppColors.blackTextColor,),),
             Text(
               Apptexts.weeklytext,
               style: TextStyle(
                 fontSize: 20.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color: AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),
             ),
             SizedBox(
               width: 35.w,
             ),
           ],
         ),
         SizedBox(height:15.h,),
         Center(
           child: SingleChildScrollView(
             child: SizedBox(
               height: 370 .h,
               width: 325.w,
               child: GridView.builder(
                 padding: EdgeInsets.all(0),
                 scrollDirection: Axis.vertical,
                 itemCount: 4, // Number of icons
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2, // 5 icons in each row
                   mainAxisSpacing: 17.0,
                   crossAxisSpacing: 10.0,
                   childAspectRatio: 0.85,
                 ),
                 itemBuilder: (BuildContext context, int index) {
                   return Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: GestureDetector(
                   onTap: () {
                   controller.handleContainerTap(index);
                   },
                   child: Obx(
                   () =>  Container(
                         decoration: BoxDecoration(
                           color:controller.selectedContainerIndex.value==index?AppColors.Profilecircle: Colors.white,
                           borderRadius: BorderRadius.circular(12),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.2),
                               spreadRadius: 2,
                               blurRadius: 2,
                               offset: Offset(0, 3),
                             ),
                           ],
                         ),
                         child: Padding(
                           padding:EdgeInsets.symmetric(horizontal: 12.w),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               SizedBox(height: 15.h,),
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.end ,
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                 Container(
                                   height: 26.h,
                                     width: 27.w,
                                     decoration: BoxDecoration(
                                       color: controller.selectedContainerIndex.value==index?AppColors.whiteTextColor:AppColors.whiteTextColor,
                                       borderRadius: BorderRadius.circular(25),
                                     ),
                                     child: Icon(Icons.done,size: 17,color: controller.selectedContainerIndex.value==index?AppColors.Profilecircle: Colors.white,)),
                               ],),
                               CircularPercentIndicator(
                                 backgroundColor: AppColors.wellcome.withOpacity(0.8),
                                 radius: 40.0.h,
                                 lineWidth: 8.7.h,
                                 percent: 0.9999,
                                 center: Text(
                                   Apptexts.circularbartext,
                                   style: TextStyle(
                                     fontSize: 9.sp,
                                     fontFamily: ApptextStyle.fontfamily,
                                     color: controller.selectedContainerIndex.value==index?AppColors.whiteTextColor:AppColors.blackTextColor,
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                                 progressColor: AppColors.yellow,
                               ),
                               SizedBox(height: 10.h,),
                               Text(
                                 controller.texts[index].toString(),
                                 style: TextStyle(
                                   fontSize: 14.sp,
                                   fontFamily: ApptextStyle.fontfamily,
                                   color: controller.selectedContainerIndex.value==index?AppColors.whiteTextColor:AppColors.blackTextColor,
                                   fontWeight: FontWeight.w600,
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                     ));// Replace with your desired icons
                 },
                 // Make the grid non-scrollable
               ),
             ),
           ),
         ),
       ],
     ),
   ),
 );
  }

}