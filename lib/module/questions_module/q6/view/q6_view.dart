import 'package:diet_app/module/questions_module/q3/controller/q3_controller.dart';
import 'package:diet_app/module/questions_module/q3/widget/q3_widget.dart';
import 'package:diet_app/module/questions_module/q4/view/q4_view.dart';
import 'package:diet_app/module/questions_module/q6/controller/q6_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../profile_module/Apperance/widget/apperance_widget.dart';
import '../../q4/binding/q4_binding.dart';
import '../widget/q6_widget.dart';

class Q6View extends GetView<Q6Controller>{
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 47.h,
              ),
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: SvgPicture.asset(
                  Appasset.Arrowdiet,
                  height: 17.h,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Apptexts.  apptext,
                    style: TextStyle(
                      fontSize: 15.1.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              LinearProgressIndicator(
                value: 100, // 20% filled
                minHeight: 10.h,
                backgroundColor: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
                valueColor:
                AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
              ),
              SizedBox(
                height: 53.h,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Apptexts.apptexts,
                  style: TextStyle(
                    fontSize: 20.2.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              Q6widget(
                  "Light active",
                  1, Appasset.svg1, () {

              }),
              Q6widget(
                  "Moderately active", 2, Appasset.svg2,
                      () {
                  }),
              Q6widget(
                  "Highly active", 3, Appasset.svg3,
                      () {
                  }),
              SizedBox(height: 202.h), // Add some spacing


              GestureDetector(
                onTap: () {
                  Get.to(Q4View(),binding: Q4Binding(),);
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
                      Apptexts.continues,
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





            ],
          ),
        ),
      );
  }

}