import 'package:diet_app/module/authentication_module/newpassword/controller/newpassword_controller.dart';
import 'package:diet_app/module/authentication_module/successpasword/binding/successpassword_binding.dart';
import 'package:diet_app/module/authentication_module/successpasword/view/successpassword_view.dart';
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

class NewpasswordView extends GetView<NewpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: 45.h,
                ),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 20.h,
                  ),
                ),
                SizedBox(
                  height: 140.h,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        Apptexts.newPassword ,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      SizedBox(
                        height: 45.h,
                        width: 290.w,
                        child: Text(
                          textAlign: TextAlign.center,
                         Apptexts.yourNewPasswords,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor.withOpacity(0.3),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 23.h,),
                      Container(
                        height:77.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                          color:AppColors.whiteTextColor,
                          boxShadow: [
                            BoxShadow(
                              color:AppColors.LoginTextform,
                              blurRadius: 1.1, // Adjust the blur radius as needed
                              spreadRadius: 1.0, // Adjust the spread radius as needed
                              offset: Offset(0, 1), // Adjust the offset as needed
                            ),
                          ],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: 30.w,top: 14.h,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                Apptexts.newPasswords,
                                style: TextStyle(
                                  fontSize: 11.5.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color:AppColors.blackTextColor.withOpacity(0.5) ,
                                  fontWeight: FontWeight.w400,
                                ),),
                              SizedBox(
                                height: 40.h,
                                child: TextFormField(
                                  focusNode: controller.focusNode1,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(controller.focusNode2);
                                  },
                                  style: TextStyle(
                                    color:AppColors.LoginOR, // Setting text color to white
                                    fontFamily: ApptextStyle.fontfamily, // Setting font family
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left:0.w,bottom:4.h),
                                    hintText:Apptexts.hintYourPasswords ,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 25.sp,
                                      color:AppColors.blackTextColor, // Setting hint text color to white with opacity
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w900,
                                      // Setting font family for hint text
                                    ),
                                  ),
                                ),
                              ),
          
          
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 23.h,),
                      Container(
                        height:77.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                          color:AppColors.whiteTextColor,
                          boxShadow: [
                            BoxShadow(
                              color:AppColors.LoginTextform,
                              blurRadius: 1.1, // Adjust the blur radius as needed
                              spreadRadius: 1.0, // Adjust the spread radius as needed
                              offset: Offset(0, 1), // Adjust the offset as needed
                            ),
                          ],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: 30.w,top: 14.h,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                Apptexts.confirmPassword,
                                style: TextStyle(
                                  fontSize: 11.5.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color:AppColors.blackTextColor.withOpacity(0.5) ,
                                  fontWeight: FontWeight.w400,
                                ),),
                              SizedBox(
                                height: 40.h,
                                child: TextFormField(
                                  focusNode: controller.focusNode2,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(controller.focusNode3);
                                  },
                                  style: TextStyle(
                                    color:AppColors.LoginOR, // Setting text color to white
                                    fontFamily: ApptextStyle.fontfamily, // Setting font family
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left:0.w,bottom:4.h),
                                    hintText: Apptexts.hintconfirmPassword,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 25.sp,
                                      color:AppColors.blackTextColor, // Setting hint text color to white with opacity
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w900,
                                      // Setting font family for hint text
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height:22.h,),
                      GestureDetector(
                        onTap: (){
                          Get.to(SuccesspasswordView(),binding:SuccesspasswordBinding(),);
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
                              Apptexts.resetPasword,
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
              ])),
        ));
  }
}
