import 'package:diet_app/module/homepage_module/addrecipe/controller/addrecipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class AddrecipesView extends GetView<AddrecipesController>{
  @override
  Widget build(BuildContext context) {
  return
   Scaffold(
     backgroundColor:AppColors.whiteTextColor,
     body: Column(
       children: [
         SizedBox(height: 47.h,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             GestureDetector(
               onTap: () {
                 Get.back();
               },
               child: SvgPicture.asset(Appasset.Arrowdiet, height: 17.h),
             ),
             Text(
               Apptexts.addrecipy,
               style: TextStyle(
                 fontSize: 21.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color: AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),
             ),
             Container(
               height: 1.h,
               width: 12.w,
             ),
           ],
         ),
       ],
     ),
   );
  }

}