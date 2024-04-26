import 'package:diet_app/module/authentication_module/wellcome/controller/wellcome_controller.dart';
import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class WellcomeView extends GetView<WellcomeController>{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    body:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(

        children: [
          SizedBox(height: 130.h,),
          Center(
            child: Container(
              height: 220.h,
              width: 225.w,
              decoration: BoxDecoration(
                color:AppColors.wellcome,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: 50.h,),
          Text(
            Apptexts.wellcomeAmit,
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: ApptextStyle.fontfamily,
              color:AppColors.blackTextColor,
              fontWeight: FontWeight.w800,
            ),),
          SizedBox(height: 15.h,),
          SizedBox(
            height:50.h,
            width: 260.w,
            child: Text(
              textAlign: TextAlign.center,
             Apptexts.yourProfile,
              style: TextStyle(
                fontSize: 13.5.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.loginLorem,
                fontWeight: FontWeight.w400,
              ),),
          ),
          SizedBox(height:100.h,),
      GestureDetector(
        onTap: (){
          Get.to(ProfileView(),binding: ProfileBinding(),);
        },
            child: Container(
              height: 49.h,
              decoration: BoxDecoration(
                color: AppColors.blueBtnColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child:  Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Apptexts.startTexts,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color:AppColors.whiteTextColor,
                    fontWeight: FontWeight.w600,
                  ),),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }
}