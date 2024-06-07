import 'dart:async';
import 'package:diet_app/common/app_assets.dart';
import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_text.dart';
import '../../login/binding/login_binding.dart';
class SplashscreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => LoginView(), binding: LoginBinding());
    });
    return Scaffold(
      backgroundColor: AppColors.blueBtnColor,
      body: Column(
        children: [
          SizedBox(
            height: 230.h,
          ),
          Center(child: SvgPicture.asset(Appasset.Splashscreen)),
          Spacer(),
          Text(
            Apptexts.splashScreen,
            style: TextStyle(
              fontSize: 13.sp,
              fontFamily: ApptextStyle.fontfamily,
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
