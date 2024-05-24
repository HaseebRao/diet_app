import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/newpassword/binding/newpassword_binding.dart';
import 'package:diet_app/module/authentication_module/newpassword/view/newpassword_view.dart';
import 'package:diet_app/module/authentication_module/verify/controller/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 47.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  Appasset.Arrowdiet,
                  height: 17.h,
                ),
              ),
              SizedBox(
                height: 152.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      Apptexts.verifyTexts,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    SizedBox(

                      width: 260.w,
                      child: Text(
                        textAlign: TextAlign.center,
                        Apptexts.pleaseEnterText,
                        style: TextStyle(
                          fontSize: 13.2.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor.withOpacity(0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Center(
                        child: OTPTextField(
                            controller: otpController,
                            length: 4,
                            width: MediaQuery.of(context).size.width,

                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldWidth: 68,
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 65,
                            style: TextStyle(
                              height: 1.2.h,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blackTextColor,
                            ),
                            onChanged: (pin) {
                              print("Changed: " + pin);
                            },
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                            // Setting circular border
                            )),
                    SizedBox(
                      height: 34.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          NewpasswordView(),
                          binding: NewpasswordBinding(),
                        );
                      },
                      child: Container(
                        height: 49.h,
                        decoration: BoxDecoration(
                          color: AppColors.blueBtnColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            Apptexts.verifyTextes,
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
                    SizedBox(
                      height: 21.h,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      Apptexts.resendCode,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
