import 'package:diet_app/module/questions_module/helppage/controller/helppage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class HelpPage extends GetView<HelpPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Profilecircle,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            SizedBox(
              height: 630.h,
              width: 390.w,
              child: ListView.builder(
                itemCount: controller
                    .showAnswer.length, // Assigning length from controller
                itemBuilder: (BuildContext context, int index) {
                  return Obx(() => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: GestureDetector(
                              onTap: () {
                                controller.toggleAnswer(index);
                              },
                              child: Container(
                                height: 48.h,
                                width: 310.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    width: 1.w,
                                    color: AppColors.blackTextColor
                                        .withOpacity(0.4),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 20.w),
                                    Text(
                                      Apptexts.day + '${index + 1}',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 190.w),
                                    Icon(
                                      controller.showAnswer[index]
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      size: 30.h,
                                      color: AppColors.account,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          if (controller.showAnswer[index])
                            Padding(
                              padding: EdgeInsets.only(bottom: 18.h),
                              child: SizedBox(
                                width: 300.w,
                                child: Text(
                                  controller.answerTexts[index],
                                  style: TextStyle(
                                    fontSize: 12.2.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.whiteTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
