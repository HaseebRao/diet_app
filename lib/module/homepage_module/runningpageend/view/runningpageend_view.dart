 import 'package:diet_app/module/homepage_module/runningpageend/binding/runningpageend_binding.dart';
import 'package:diet_app/module/homepage_module/runningpageend/controller/runningpageend_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../../progress/controller/progress_controller.dart';

class RunningpageendView extends GetView<RunningpageendController>{
  @override
  Widget build(BuildContext context) {
  return
   Scaffold(
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 10.w),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 30.h),
           IconButton(
             onPressed: () => Get.back(),
             icon: SvgPicture.asset(
               Appasset.Arrowdiet,
               height: 15.8.h,
               color: AppColors.blackTextColor,
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Column(
               children: <Widget>[
                 Row(
                   children: [
                     SizedBox(width: 13.w),
                     Text(
                       Apptexts.Days,
                       style: TextStyle(
                         fontSize: 14.sp,
                         fontFamily: ApptextStyle.fontfamily,
                         color: AppColors.Profilecircle,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 8.h),
                 SizedBox(
                   height: 35.h,
                   child: ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     padding: EdgeInsets.all(0),
                     itemCount: controller.textNo.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index) {
                       return Obx(() => Padding(
                         padding: EdgeInsets.only(right: 10.w),
                         child: GestureDetector(
                           onTap: () {
                             controller.toggleIndex(index);
                           },
                           child: Container(
                             height: 33.h,
                             width: 38.w,
                             decoration: BoxDecoration(
                               color: controller.selectedIndices.contains(index)
                                   ? AppColors.Profilecircle
                                   : Colors.transparent,
                               borderRadius: BorderRadius.circular(100),
                             ),
                             child: Center(
                               child: controller.selectedIndices.contains(index)
                                   ? Icon(
                                 Icons.done,
                                 size: 20.sp,
                                 color: Colors.white,
                               )
                                   : Text(
                                 controller.textNo[index],
                                 style: TextStyle(
                                   fontSize: 15.sp,
                                   fontFamily: ApptextStyle.fontfamily,
                                   color: Colors.black,
                                   fontWeight: FontWeight.w600,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ));
                     },
                   ),
                 ),
                 SizedBox(height: 40.h,),
                 Stack(
                   children: [
                     Container(
                       height: 105.h,
                       width: 111.w,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(12),
                       ),
                       child: SfCircularChart(
                         tooltipBehavior: controller.tooltip,
                         series: <CircularSeries<ChartData, String>>[
                           DoughnutSeries<ChartData, String>(
                             dataSource: controller.data,
                             xValueMapper: (ChartData data, _) => data.x,
                             yValueMapper: (ChartData data, _) => data.y,
                             pointColorMapper: (ChartData data, _) => data.color,
                             radius: '185%',
                             innerRadius: '55%',
                             name: 'Gold',
                             cornerStyle: CornerStyle.bothFlat,
                           ),
                         ],
                       ),
                     ),
                     Positioned(
                       left: 49,
                       top: 43,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           SvgPicture.asset(
                             Appasset.man,
                             height: 34.h,
                             color: AppColors.Profilecircle,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 50.h,),
                 Container(height: 47.h,
                   width: 315.w,
                   decoration: BoxDecoration(
                       border: Border.all(color: AppColors.coloroff),
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 17.w),
                     child: Row(
                       children: [
                         Container(
                           height: 10.h,
                           width: 10.w,
                           decoration: BoxDecoration(
                               color:AppColors.Profilecircle,
                               borderRadius: BorderRadius.circular(100)
                           ),
                         ),
                         SizedBox(width: 8.w,),
                         Text(
                           Apptexts.diarytext,
                           style: TextStyle(
                             fontSize: 11.5.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         Spacer(),
                         Container(
                           height: 10.h,
                           width: 10.w,
                           decoration: BoxDecoration(
                               color:AppColors.yellowdark,
                               borderRadius: BorderRadius.circular(100)
                           ),
                         ),
                         SizedBox(width: 8.w,),
                         Text(
                           Apptexts. totalsteps,
                           style: TextStyle(
                             fontSize: 11.5.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ],
                     ),
                   ),),
                 SizedBox(height: 20.h,),
                 Center(
                   child: SizedBox(
                     height: 135.h,
                     width: 318.w,
                     child: ListView.builder(
                         itemCount: controller.modelclass.length,
                         physics: NeverScrollableScrollPhysics(),
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index){
                           return Padding(
                             padding:  EdgeInsets.only(right: 10.w,top: 5.h,bottom: 5.h,left:3.w),
                             child: Container(
                               width: 95.w,
                               decoration: BoxDecoration(
                                 color: AppColors.whiteTextColor,
                                 borderRadius: BorderRadius.circular(11),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.2),
                                     spreadRadius: 3,
                                     blurRadius: 3,
                                     offset: Offset(0, 2), // changes position of shadow
                                   ),
                                 ],
                               ),
                               child: Column(
                                   children: [
                                     SizedBox(height: 15.h,),
                                     Container(
                                       height: 38.h,
                                       width: 41.w,
                                       decoration: BoxDecoration(
                                         color: AppColors.Profilecircle,
                                         borderRadius: BorderRadius.circular(100),
                                       ),
                                       child:  Padding(
                                         padding: const EdgeInsets.all(8),
                                         child: SvgPicture.asset(
                                           controller.modelclass[index].image,
                                           height: 12.h,
                                           color: AppColors.whiteTextColor,
                                         ),
                                       ),
                                     ),

                                     SizedBox(height: 12.h,),
                                     Text(
                                       controller.modelclass[index].text1,
                                       style: TextStyle(
                                         fontSize: 12.sp,
                                         fontFamily: ApptextStyle.fontfamily,
                                         color: AppColors.blackTextColor,
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                     SizedBox(height: 6.h,),
                                     Text(
                                       controller.modelclass[index].text2,
                                       style: TextStyle(
                                         fontSize: 9.7.sp,
                                         fontFamily: ApptextStyle.fontfamily,
                                         color: AppColors.blackTextColor,
                                         fontWeight: FontWeight.w500,
                                       ),
                                     ),
                                   ]
                               ),
                             ),
                           );
                         }),
                   ),
                 ),
                 SizedBox(height: 15.h,),
                 SizedBox(height: 20.h,),
                 Obx(() => GestureDetector(
                   onTap: () => controller.updateSelectedIndex(0),
                   child: GestureDetector(
                     onTap: (){
                       Get.to(BottomNavBarScreen(),binding: BottomNavBarBinding(),);
                     },
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
                           Apptexts.leave,
                           style: TextStyle(
                             fontSize: 15.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: controller.selectedIndex.value == 0 ? AppColors.whiteTextColor : AppColors.Profilecircle,
                             fontWeight: FontWeight.w600,
                           ),
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
                         Apptexts.Done,
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
         ],
       ),
     ),
   );
  }
}