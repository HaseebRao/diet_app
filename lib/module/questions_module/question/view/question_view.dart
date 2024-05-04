import 'package:diet_app/module/questions_module/question/controller/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../profile_module/profile/binding/profile_binding.dart';
import '../../../profile_module/profile/view/profile_view.dart';

class QuestionView extends GetView<QuestionController>{
  @override
  Widget build(BuildContext context) {
  return
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(

crossAxisAlignment: CrossAxisAlignment.center,
          children: [
SizedBox(height:140.h,),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                Apptexts.select,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),),
            ),
            SizedBox(height: 80.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 185.h,
                  width:140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color:AppColors.Profilecircle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],

                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
                SizedBox(width: 30.w,),
                Container(
                  height: 185.h,
                  width:140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color:AppColors.whiteTextColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height:163.h,),
            GestureDetector(
              onTap: (){
                // Get.off(ProfileView(),binding: ProfileBinding(),);
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
                    Apptexts.continues,
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