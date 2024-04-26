import 'package:diet_app/module/authentication_module/newpassword/binding/newpassword_binding.dart';
import 'package:diet_app/module/authentication_module/newpassword/view/newpassword_view.dart';
import 'package:diet_app/module/authentication_module/verify/controller/verify_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
class VerifyView extends GetView<VerifyController> {  @override
  Widget build(BuildContext context) {
  return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45.h,),
          GestureDetector(
              onTap: (){
                Get.back();
              },
              child: SvgPicture.asset(Appasset.Arrowdiet,height: 20.h,)),
          SizedBox(height:152.h,),
          Center(
            child: Column(
              children: [
                Text(
                  Apptexts.verifyTexts,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color:AppColors.blackTextColor,
                    fontWeight: FontWeight.w800,
                  ),),
                SizedBox(height: 17.h,),
                SizedBox(
                  height: 39.h,
                  width: 245.w,
                  child: Text(
                    textAlign: TextAlign.center,
                   Apptexts.pleaseEnterText,
                    style: TextStyle(
                      fontSize: 13.2.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor.withOpacity(0.3),
                      fontWeight: FontWeight.w500,
                    ),),
                ),
            SizedBox(height: 35.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height:50.h,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index){
                      return Padding(
                        padding: EdgeInsets.only(right: 21.w),
                        child: Container(
                          width: 54.w,
                          decoration: BoxDecoration(
                            color: AppColors.whiteTextColor,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color:AppColors.LoginTextform,
                                blurRadius: 1.1, // Adjust the blur radius as needed
                                spreadRadius: 0.0, // Adjust the spread radius as needed
                                offset: Offset(0, 0), // Adjust the offset as needed
                              ),
                            ],
                          ),
                           child:Center(
                             child: Text(
                               '5',
                               style: TextStyle(
                                 fontSize: 28.sp,
                                 fontFamily: ApptextStyle.fontfamily,
                                 color:AppColors.blackTextColor,
                                 fontWeight: FontWeight.w700,
                               ),),
                           ),
                        ),
                      );
                    }),
              ),
            ),
                SizedBox(height:34.h,),
                GestureDetector(
                  onTap: (){
                    Get.to(NewpasswordView(),binding: NewpasswordBinding(),);

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
                       Apptexts.verifyTextes,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w600,
                        ),),
                    ),
                  ),
                ),
                SizedBox(height:21.h,),
                Text(
                  textAlign: TextAlign.center,
                 Apptexts.resendCode,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color:AppColors.blackTextColor,
                    fontWeight: FontWeight.w600,
                  ),),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}
