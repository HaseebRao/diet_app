import 'package:diet_app/module/profile_module/reminders/controllers/reminders_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../custom/Reminders_custom.dart';


class RemindersVeiw extends GetView<MyCheckboxController>{
  @override

  Widget build(BuildContext context) {
   return
  Scaffold(
    backgroundColor:AppColors.whiteTextColor ,
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
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
                Apptexts.reminders,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),),
              Container(
                height: 1.h,
                width: 12.w,
              )
            ],
          ),
          SizedBox(height: 58.h,),
          Center(
            child: MyCheckboxWidget(
            ),
          ),
        ],
      ),
    ),
  );
  }

}