import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/account_controller.dart';

class DialogueBox extends StatelessWidget {
  const DialogueBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AccountController controller = Get.find<AccountController>();

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 470.h,
          width: 310.w,
          decoration: BoxDecoration(
            color: AppColors.whiteTextColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60.h),
                Text(
                  textAlign: TextAlign.start,
                  Apptexts.dialog,
                  style: TextStyle(
                    fontSize: 21.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 275.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    Apptexts.dummytext,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 43.h),
                Text(
                  textAlign: TextAlign.center,
                  Apptexts.dialogText,
                  style: TextStyle(
                    fontSize: 9.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blueBtnColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 7.h),
                        Container(
                          height: 34.h,
                          width: 230.w,
                          decoration: BoxDecoration(
                            color: AppColors.Profile,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.LoginTextform,
                                blurRadius: 1.1,
                                spreadRadius: 1.0,
                                offset: Offset(0, 1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
                            child: SizedBox(
                              height: 40.h,
                              child: TextFormField(
                                controller: controller.textController1,
                                focusNode: controller.focusNode1,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context)
                                      .requestFocus(controller.focusNode2);
                                },
                                style: TextStyle(
                                  color: AppColors
                                      .LoginOR, // Setting text color to white
                                  fontFamily: ApptextStyle
                                      .fontfamily, // Setting font family
                                ),
                                decoration: InputDecoration(
                                  hintText: Apptexts.emailaddresss,
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.opacityGreyColor,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 70.h),
                        GestureDetector(
                          onTap: () {
                            controller.validateForgot();
                          },
                          child: Container(
                            height: 33.h,
                            width: 225.w,
                            decoration: BoxDecoration(
                              color: AppColors.account.withOpacity(0.88),
                              borderRadius: BorderRadius.circular(60).w,
                            ),
                            child: Center(
                              child: Text(
                                Apptexts.deleteAccount,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.whiteTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
