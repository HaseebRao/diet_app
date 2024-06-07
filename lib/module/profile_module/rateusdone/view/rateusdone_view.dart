import 'dart:async';

import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:diet_app/module/profile_module/rateusdone/controller/rateusdone_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../rateus/widget/rateus_customwidget.dart';

class RateusdoneView extends GetView<RateusdoneController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(

          children: [
            SizedBox(height: 45.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 17.h,
                  ),
                ),
SizedBox(width: 80.w,),
                Text(
                  Apptexts. rateus,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            SizedBox(height: 275.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Apptexts.thanks,
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: Image.asset(
                    'assets/images/emojii.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
