import 'package:diet_app/module/profile_module/appversion/controller/appversion_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class AppversionView extends GetView<AppversionController>{
  @override
  Widget build(BuildContext context) {
 return
  Scaffold(
    backgroundColor: AppColors.Profilecircle,
    body:Padding(
      padding:  EdgeInsets.symmetric(horizontal:23.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48.h,
          ),
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: SvgPicture.asset(
              Appasset.Arrowdiet,
              height: 17.h,
              color: AppColors.whiteTextColor,
            ),
          ),
          SizedBox(
            height: 125.h,
          ),
          Center(child: SvgPicture.asset(Appasset.Splashscreen)),
          SizedBox(
            height: 17.h,
          ),
          Center(
            child: Text(
              textAlign:TextAlign.center,
              Apptexts.appversions,
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.whiteTextColor,
                fontWeight: FontWeight.w500,
              ),
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