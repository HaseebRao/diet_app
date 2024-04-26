import 'package:diet_app/module/profile_module/Apperance/controller/apperance_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/apperance_widget.dart';

class ApperanceView extends GetView<ApperanceController>{


  @override
  Widget build(BuildContext context) {

   return
   Scaffold(
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 21.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 40.h,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,),
             Text(
               textAlign: TextAlign.start,
               Apptexts.appearance,
               style: TextStyle(
                 fontSize: 21.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color:AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),),
             Container(
               height: 1.h,
               width: 12.w,
             )
           ],
         ),
     //        SizedBox(height: 45.h,),
     //        Text(
     //          textAlign: TextAlign.start,
     //          Apptexts.selectthemes,
     //          style: TextStyle(
     //            fontSize: 12.sp,
     //            fontFamily: ApptextStyle.fontfamily,
     //            color:AppColors.blackTextColor,
     //            fontWeight: FontWeight.w700,
     //          ),),
     //        ApperanceWidget(
     //          text: Apptexts.systemDefalt,
     //          icon:  Icons.contrast,
     //        ),
     //        SizedBox(height: 7.h,),
     //        ApperanceWidget(
     //          text: Apptexts.light,
     //          icon:  Icons.light_mode,
     //        ),
     //        SizedBox(height: 7.h,),
     //        ApperanceWidget(
     //          text: Apptexts.dark,
     //          icon:  Icons.dark_mode,
     //        ),
     //
     //        GetBuilder<ApperanceController>(
     //            builder: (controller){
     // return InkWell(
     //   onTap: ()=>controller.serOrderType(value),
     // )
     //            }
     //        )
     
     
     
         // InkWell(
         //   onTap: ()=>,
         // )


       Container(
         height: 50.h,

         // color: AppColors.Bookishw,
           child: InkWell(
           onTap: () {
             controller.serOrderType(1 as String);
           },
         ),
       ),
       ],
       ),
     ),
   ),
   );
  }

}

// Container(
// height:54.h,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all(color: AppColors.Profiletextes,width: 1.h),
// ),
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 14.0),
// child: Row(
// children: [
// Icon(
// icon,
// color:AppColors.Profilecircle,
// size: 23.sp,
// ),
// SizedBox(width:19.w,),
// Text(
// text!,
// style: TextStyle(
// fontSize: 14.sp,
// fontFamily: ApptextStyle.fontfamily,
// color:AppColors.Profiletexts ,
// fontWeight: FontWeight.w400,
// ),),
// Spacer(),
//
//
//
//
//
//
// ],
// ),
// ),
// );