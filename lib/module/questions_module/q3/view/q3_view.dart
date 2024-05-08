import 'package:diet_app/module/questions_module/q3/controller/q3_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../profile_module/Apperance/widget/apperance_widget.dart';

class Q3View extends GetView<Q3Controller>{
  @override
  Widget build(BuildContext context) {
   return
 Scaffold(
   body: Padding(
     padding:EdgeInsets.symmetric(horizontal: 21.w),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(
           height: 47.h,
         ),
         GestureDetector(
           onTap: (){
             Get.back();
           },
           child: SvgPicture.asset(
             Appasset.Arrowdiet,
             height: 17.h,
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               Apptexts.valuetext,
               style: TextStyle(
                 fontSize: 15.1.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color: AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),
             ),
           ],
         ),
         SizedBox(
           height: 5.h,
         ),
         LinearProgressIndicator(
           value: 0.26, // 20% filled
           minHeight: 10.h,
           backgroundColor: Colors.grey[300],
           borderRadius: BorderRadius.circular(10),
           valueColor:
           AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
         ),
         SizedBox(
           height: 65.h,
         ),
         Center(
           child: Text(
             textAlign: TextAlign.center,
             Apptexts.agetext,
             style: TextStyle(
               fontSize: 20.2.sp,
               fontFamily: ApptextStyle.fontfamily,
               color: AppColors.blackTextColor,
               fontWeight: FontWeight.w700,
             ),
           ),
         ),
         SizedBox(
           height: 15.h,
         ),

         ThemeContainerWidget(
             "Female",
             1, Icons.tonality_rounded, () {

         }),
         ThemeContainerWidget(
             "Male", 2, Icons.dark_mode_outlined,
                 () {
             }),
         ThemeContainerWidget(
             "Binary", 3, Icons.light_mode_outlined,
                 () {
             }),
       ],
     ),
   ),
 );
  }

}