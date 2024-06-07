import 'dart:async';

import 'package:diet_app/module/homepage_module/homepage/view/homepage_view.dart';
import 'package:diet_app/module/homepage_module/myrecipe/binding/myrecipe_binding.dart';
import 'package:diet_app/module/homepage_module/myrecipe/view/myrecipe_view.dart';
import 'package:diet_app/module/homepage_module/success/controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class SuccessView extends GetView<SuccessController>{
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => MyrecipeView(), binding: MyrecipeBinding());
    });
    return
      Scaffold(
        backgroundColor: AppColors.whiteTextColor,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child:Column(
            children: [
              SizedBox(
                height: 230.h,
              ),
              Center(child:Container(
                height: 190.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  image: DecorationImage(
                    image: AssetImage('assets/images/success.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              )),
              SizedBox(height: 20.h,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Apptexts.success,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      Apptexts.success1,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      Apptexts.success2,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      );
  }

}