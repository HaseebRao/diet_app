import 'package:diet_app/module/profile_module/privacypolicy/controller/privacypolicy_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class PrivacypolicyView extends GetView<PrivacypolicyController>{
  @override
  Widget build(BuildContext context) {
 return
  Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: Column(
        children: [
          SizedBox(height: 47.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.back();
                  },

                  child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,)),
              Text(
                textAlign: TextAlign.start,
                Apptexts.privacy,
                style: TextStyle(
                  fontSize: 21.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),),
              Container(
                height: 1.h,
                width: 8.w,
              )
            ],
          ),
          SizedBox(height: 38.h,),
          SizedBox(height: 49.h,
            child: Text(
              textAlign: TextAlign.start,
              Apptexts.loremtext,
              style: TextStyle(
                fontSize: 12.2.sp,
                fontFamily: ApptextStyle.fontfamily,
                color:AppColors.blackTextColor,
                fontWeight: FontWeight.w800,
                height: 1.6.h,
              ),),),
          SizedBox(height: 25.h,),
          SizedBox(
            child: Text(
              textAlign: TextAlign.justify,
              Apptexts.privacypolicy,
              style: TextStyle(
                fontSize: 10.2.sp,
                fontFamily: ApptextStyle.fontfamily,
                color:AppColors.blackTextColor,
                fontWeight: FontWeight.w500,
                height: 1.6.h,
              ),),),
        ],
      ),
    ),
  );
  }

}