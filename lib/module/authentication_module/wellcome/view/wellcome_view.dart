
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../question/binding/question_binding.dart';
import '../../question/view/question_view.dart';

class WellcomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    backgroundColor: AppColors.whiteTextColor,
    body:  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.w),
      child: Column(

        children: [
          SizedBox(height: 120.h,),
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
            width: 260.w,
            child: Text(
              textAlign: TextAlign.center,
             Apptexts.yourProfile,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.loginLorem,
                fontWeight: FontWeight.w400,
              ),),
          ),
          SizedBox(height:125.h,),
      GestureDetector(
        onTap: (){
          Get.off(QuestionView(),binding: QuestionBinding(),);
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