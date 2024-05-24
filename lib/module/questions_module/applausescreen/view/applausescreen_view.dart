import 'dart:async';

import 'package:diet_app/module/payment_module/subscription/binding/subscription_binding.dart';
import 'package:diet_app/module/payment_module/subscription/view/subscription_view.dart';
import 'package:diet_app/module/questions_module/applausescreen/controller/applausescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class ApplausescreenView extends GetView<ApplausescreenController>{
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.off(SubscriptionView(),binding: SubscriptionBinding(),);
    });
    return
  Scaffold(
    backgroundColor: AppColors.whiteTextColor,
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal:21.0),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
      children: [
SizedBox(height: 130.h,),
        Center(
          child: Container(
            height: 240.h,
            child: Image.asset(
              'assets/images/applausescreen.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SizedBox(height: 25.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              Apptexts.applausescreen,
              style: TextStyle(
                fontSize: 12.5.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.Profile,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              Apptexts.applaustext,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.Profilecircle,
                fontWeight: FontWeight.w600,
              ),
            ),

          ],
        ),
        SizedBox(height: 15.h,),

        SizedBox(
          height:50.h,
          child:  Text(
    textAlign: TextAlign.center,
            Apptexts.applause2bdtext,
            style: TextStyle(
              fontSize: 12.8.sp,
              fontFamily: ApptextStyle.fontfamily,
              color: AppColors.blackTextColor.withOpacity(0.5),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
      ),
    ),
  );
  }

}