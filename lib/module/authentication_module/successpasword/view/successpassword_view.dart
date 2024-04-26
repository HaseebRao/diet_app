import 'package:diet_app/module/authentication_module/successpasword/controller/successpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class SuccesspasswordView extends GetView<SuccesspasswordController>{
  @override
  Widget build(BuildContext context) {
   return
 Scaffold(
   backgroundColor: AppColors.whiteTextColor,
   body: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 21.0),
     child: Column(
       children: [
SizedBox(height: 180.h,),
         Center(
           child: Container(
             width: 220.w,
             height: 220.h,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(Appasset.Successpassword,),
                 fit: BoxFit.cover,
               ),
             ),
             // Other properties of the container
           ),
         ),
         SizedBox(height: 25.h,),
         SizedBox(
           width: 310.w,
           child: Text(
             textAlign: TextAlign.center,
             Apptexts.passwordChanged,
             style: TextStyle(
               fontSize: 17.sp,
               fontFamily: ApptextStyle.fontfamily,
               color:AppColors.blueBtnColor ,
               fontWeight: FontWeight.w700,
             ),),
         ),
       ],
     ),
   ),
 );

  }

}