import 'package:diet_app/module/authentication_module/forget/binding/forget_binding.dart';
import 'package:diet_app/module/authentication_module/forget/view/forget_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/verify/controller/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                      Get.off(ForgetView(), binding: ForgetBinding());
                    },
                    icon: SvgPicture.asset(
                      Appasset.Arrowdiet,
                      height: 21.h,
                      fit: BoxFit.fitHeight,
                    )),
              ),
              SizedBox(
                height: 152.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
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
                                color:
                                    AppColors.blackTextColor.withOpacity(0.3),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          SizedBox(
                            width: 300.w,
                            child: GestureDetector(
                              onTap: () {
                                controller.selectGender();
                              },
                              child: PinCodeTextField(
                                keyboardType: TextInputType.number,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                obscuringCharacter: '....',
                                length: 4,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'^[0-9]+$'),
                                  ),
                                ],
                                obscureText: false,
                                animationType: AnimationType.fade,
                                pinTheme: PinTheme(
                                  activeBoxShadow: [
                                    BoxShadow(
                                        color: AppColors.blackTextColor
                                            .withOpacity(0.25),
                                        blurRadius: 5,
                                        offset: Offset(0.1, 0.1),
                                        spreadRadius: 0,
                                        blurStyle: BlurStyle.outer)
                                  ],
                                  inActiveBoxShadow: [
                                    BoxShadow(
                                        color: AppColors.blackTextColor
                                            .withOpacity(0.25),
                                        blurRadius: 5,
                                        offset: Offset(0.1, 0.1),
                                        spreadRadius: 0,
                                        blurStyle: BlurStyle.outer)
                                  ],
                                  activeColor: AppColors.whiteTextColor,
                                  activeFillColor: AppColors.whiteTextColor,
                                  inactiveFillColor:
                                      Colors.grey.withOpacity(0.1),
                                  inactiveColor: Colors.grey.withOpacity(0),
                                  selectedFillColor: AppColors.whiteTextColor,
                                  selectedColor: AppColors.whiteTextColor,
                                  fieldHeight: 60.h,
                                  fieldWidth: 60.w,
                                  shape: PinCodeFieldShape.circle,
                                ),
                                animationDuration:
                                    const Duration(milliseconds: 300),
                                backgroundColor: Colors.transparent,
                                enableActiveFill: true,
                                onChanged: (otp) {
                                  controller.pin.value = otp;
                                },
                                appContext: context,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 34.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectGender();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
