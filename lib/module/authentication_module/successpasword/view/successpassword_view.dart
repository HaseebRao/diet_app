import 'dart:async';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/authentication_module/verify/binding/verify_binding.dart';
import 'package:diet_app/module/authentication_module/verify/view/verify_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class SuccesspasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => LoginView(), binding: LoginBinding());
    });
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          children: [
            SizedBox(
              height: 180.h,
            ),
            Center(
              child: Container(
                width: 220.w,
                height: 220.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Appasset.Successpassword,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // Other properties of the container
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              width: 310.w,
              child: Text(
                textAlign: TextAlign.center,
                Apptexts.passwordChanged,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blueBtnColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
