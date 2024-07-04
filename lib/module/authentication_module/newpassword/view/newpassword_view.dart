import 'package:diet_app/module/authentication_module/newpassword/controller/newpassword_controller.dart';
import 'package:diet_app/module/authentication_module/verify/binding/verify_binding.dart';
import 'package:diet_app/module/authentication_module/verify/view/verify_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class NewpasswordView extends GetView<NewpasswordController> {
  NewpasswordView({super.key});
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
                SizedBox(height: 38.h),
                SizedBox(
                  height: 37,
                  child: IconButton(
                    onPressed: () {
                      Get.off(VerifyView(), binding: VerifyBinding());
                    },
                    icon: SvgPicture.asset(
                      Appasset.Arrowdiet,
                      height: 21.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(height: 120.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
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
                              width: 280.w,
                              child: Text(
                                textAlign: TextAlign.center,
                                Apptexts.yourNewPasswords,
                                style: TextStyle(
                                  height: 1.3.h,
                                  fontSize: 12.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color:
                                      AppColors.blackTextColor.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 30.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  Apptexts.newPassword,
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor
                                        .withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 7.h),
                                Container(
                                  height: 45.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteTextColor,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: AppColors.LoginTextform,
                                        blurRadius: 1.1,
                                        spreadRadius: 1.0,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    controller: controller.textController1,
                                    focusNode: controller.focusNode1,
                                    textInputAction: TextInputAction.next,
                                    onFieldSubmitted: (_) {
                                      FocusScope.of(context)
                                          .requestFocus(controller.focusNode2);
                                    },
                                    style: TextStyle(
                                      color: AppColors.LoginOR,
                                      fontFamily: ApptextStyle.fontfamily,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 15.h),
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
                              ],
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
                                    color: AppColors.blackTextColor
                                        .withOpacity(0.5),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 7.h),
                                Container(
                                  height: 45.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteTextColor,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: AppColors.LoginTextform,
                                        blurRadius: 1.1,
                                        spreadRadius: 1.0,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    controller: controller.textController2,
                                    focusNode: controller.focusNode2,
                                    textInputAction: TextInputAction.done,
                                    onChanged: (value) {
                                      controller
                                          .updateButtonColor(value.isNotEmpty);
                                    },
                                    style: TextStyle(
                                      color: AppColors.LoginOR,
                                      fontFamily: ApptextStyle.fontfamily,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20.w, vertical: 15.h),
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
                              ],
                            ),
                            SizedBox(height: 28.h),
                            Obx(() => GestureDetector(
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      controller.validateSignin();
                                    }
                                  },
                                  child: Container(
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      color: controller.isTextEntered.value
                                          ? AppColors.Profilecircle
                                          : AppColors.Profilecircles,
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
                                )),
                          ],
                        ),
                      )
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
