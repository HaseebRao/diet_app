import 'package:diet_app/common/app_assets.dart';
import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/questions_module/practice/binding/practice_binding.dart';
import 'package:diet_app/module/questions_module/practice/view/practice-view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../profile_module/profile/binding/profile_binding.dart';
import '../../../profile_module/profile/view/profile_view.dart';
import '../controller/question_controller.dart';

class QuestionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(), // Initialize your controller
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.whiteTextColor,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 147.h,
              ), // Center(
              Text(
                textAlign: TextAlign.center,
                Apptexts.select,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => GestureDetector(
                    onTap: () {
                      controller.handleContainer1Tap(); // Call method to handle container 1 tap
                    },
                    child: Container(
                      height: 187.h,
                      width: 142.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: controller.isSelectedContainer1.value
                            ? AppColors.Profilecircle
                            : AppColors.whiteTextColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          SvgPicture.asset(
                            Appasset.bluedrop,
                            height: 44.h,
                            color: controller.isSelectedContainer1.value
                                ? AppColors.whiteTextColor
                                : AppColors.Profilecircle, // Change color here
                          ),
                          SizedBox(
                            height: 37.h,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            Apptexts.wheat,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.isSelectedContainer1.value
                                  ? AppColors.whiteTextColor
                                  : AppColors.Profilecircle,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 30.w,
                  ),
                  Obx(() => GestureDetector(
                    onTap: () {
                      controller.handleContainer2Tap(); // Call method to handle container 2 tap
                    },
                    child: Container(
                      height: 187.h,
                      width: 142.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: controller.isSelectedContainer2.value
                            ? AppColors.Profilecircle
                            : AppColors.whiteTextColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          SvgPicture.asset(
                            Appasset.strong,
                            height: 44.h,
                            color: controller.isSelectedContainer2.value
                                ? AppColors.whiteTextColor
                                : AppColors.Profilecircle, // Change color here
                          ),
                          SizedBox(
                            height: 37.h,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            Apptexts.wheatgain,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.isSelectedContainer2.value
                                  ? AppColors.whiteTextColor
                                  : AppColors.Profilecircle,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 151.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(PracticeView(),binding: PracticeBinding(),);
                },
                child: Container(
                  height: 47.h,
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
      ),
    );
  }
}
