import 'package:diet_app/module/authentication_module/newpassword/controller/newpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../successpasword/binding/successpassword_binding.dart';
import '../../successpasword/view/successpassword_view.dart';

class NewpasswordView extends GetView<NewpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.h),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  Appasset.Arrowdiet,
                  height: 17.h,
                ),
              ),
              SizedBox(height: 130.h),
              Center(
                child: Column(
                  children: [
                    Text(
                      Apptexts.newPassword,
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    SizedBox(
                      height: 45.h,
                      width: 280.w,
                      child: Text(
                        textAlign: TextAlign.center,
                        Apptexts.yourNewPasswords,
                        style: TextStyle(
                          fontSize: 12.2.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor.withOpacity(0.3),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            Apptexts.newPassword,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor.withOpacity(0.5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 7.h),
                          Container(
                            height: 45.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                              color: AppColors.whiteTextColor,
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.LoginTextform,
                                  blurRadius: 1.1,
                                  spreadRadius: 1.0,
                                  offset: Offset(0, 1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: SizedBox(
                                height: 40.h,
                                child: TextFormField(
                                  controller: controller.textController1,
                                  focusNode: controller.focusNode1,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(controller.focusNode2);
                                  },
                                  style: TextStyle(
                                    color: AppColors.LoginOR,
                                    fontFamily: ApptextStyle.fontfamily,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: Apptexts.hintYourPasswords,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 13.sp,
                                      color: AppColors.blackTextColor,
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          Apptexts.confirmPassword,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 7.h),
                        Container(
                          height: 45.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: AppColors.whiteTextColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.LoginTextform,
                                blurRadius: 1.1,
                                spreadRadius: 1.0,
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.w),
                            child: SizedBox(
                              height: 40.h,
                              child: TextFormField(
                                controller: controller.textController2,
                                focusNode: controller.focusNode2,
                                textInputAction: TextInputAction.done,
                                onChanged: (value) {
                                  controller.updateButtonColor(value.isNotEmpty);
                                },
                                style: TextStyle(
                                  color: AppColors.LoginOR,
                                  fontFamily: ApptextStyle.fontfamily,
                                ),
                                decoration: InputDecoration(
                                  hintText: Apptexts.hintYourPasswords,
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColors.blackTextColor,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:28.h),
                    Obx(() => GestureDetector(
                      onTap: () {
                        // Perform action here
                      },
                      child: GestureDetector(
                        onTap: (){
                          Get.to(SuccesspasswordView(),binding:SuccesspasswordBinding(),);
                        },
                        child: Container(
                          height: 49.h,
                          decoration: BoxDecoration(
                            color: controller.isTextEntered.value ? AppColors.Profilecircle : AppColors.Profilecircles,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              Apptexts.resetPasword,
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.whiteTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
