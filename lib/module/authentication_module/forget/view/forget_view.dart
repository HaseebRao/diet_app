import 'package:diet_app/module/authentication_module/forget/controller/forget_controller.dart';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/authentication_module/verify/binding/verify_binding.dart';
import 'package:diet_app/module/authentication_module/verify/view/verify_view.dart';
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

class ForgetView extends GetView<ForgerController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 38.h,
                ),
                SizedBox(
                  height: 37,
                  child: IconButton(
                      onPressed: () {
                        Get.off(
                          LoginView(),
                          binding: LoginBinding(),
                        );
                      },
                      icon: SvgPicture.asset(
                        Appasset.Arrowdiet,
                        height: 21.h,
                        fit: BoxFit.fitHeight,
                      )),
                ),
                SizedBox(
                  height: 140.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              Apptexts.forgetPassword,
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
                              width: 245.w,
                              child: Text(
                                textAlign: TextAlign.center,
                                Apptexts.pleaseEnter,
                                style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color:
                                      AppColors.blackTextColor.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              Apptexts.emailAdress,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color:
                                    AppColors.blackTextColor.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 45.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteTextColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.LoginTextform,
                                      blurRadius:
                                          1.1, // Adjust the blur radius as needed
                                      spreadRadius:
                                          1.0, // Adjust the spread radius as needed
                                      offset: Offset(
                                          0, 1), // Adjust the offset as needed
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(5)),
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
                                  hintText: Apptexts.gmailTexts,
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 9.h, horizontal: 25.w),
                                  hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.backcolor.withOpacity(
                                        0.6), // Setting hint text color to white with opacity
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w700,
                                    // Setting font family for hint text
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 34.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.validateForgot();
                        },
                        child: Container(
                          height: 47.h,
                          decoration: BoxDecoration(
                            color: AppColors.blueBtnColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              Apptexts.sendTexts,
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
