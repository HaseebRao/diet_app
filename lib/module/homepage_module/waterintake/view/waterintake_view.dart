import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../controller/waterintake_controller.dart';

class WaterintakeView extends GetView<WaterintakeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            IconButton(
              onPressed: () => Get.back(),
              icon: SvgPicture.asset(
                Appasset.Arrowdiet,
                height: 15.8.h,
                color: AppColors.blackTextColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 13.w),
                      Text(
                        Apptexts.Days,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.Profilecircle,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 35.h,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemCount: controller.textNo.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Obx(() => Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: GestureDetector(
                                onTap: () {
                                  controller.toggleIndex(index);
                                },
                                child: Container(
                                  height: 33.h,
                                  width: 38.w,
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndices
                                            .contains(index)
                                        ? AppColors.Profilecircle
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: controller.selectedIndices
                                            .contains(index)
                                        ? Icon(
                                            Icons.done,
                                            size: 20.sp,
                                            color: Colors.white,
                                          )
                                        : Text(
                                            controller.textNo[index],
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 175.h,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 15.h,
                          left: 5.w,
                          child: SizedBox(
                            height: 145.h,
                            width: 160.w,
                            child: LiquidCircularProgressIndicator(
                              backgroundColor: const Color(0xffE1F4FF),
                              value: 0.5,
                              valueColor: const AlwaysStoppedAnimation(
                                  Color(0xff42B2FE)),
                              borderColor: AppColors.whiteTextColor,
                              borderWidth: 0.0,
                              direction: Axis.vertical,
                              center: Text(
                                "50%",
                                style: TextStyle(
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 175.h,
                          width: 170.w,
                          child: CircularPercentIndicator(
                            backgroundColor:
                                AppColors.wellcome.withOpacity(0.8),
                            radius: 81.0.h,
                            lineWidth: 2.2.h,
                            percent: 0.70,
                            progressColor: AppColors.Profilecircle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 57.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              color: AppColors.whiteTextColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.12), // Shadow color
                                  spreadRadius: 4, // Spread radius
                                  blurRadius: 9, // Blur radius
                                  offset: Offset(
                                      0, 1), // Offset in the x and y direction
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 33.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.Profilecircle,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      Appasset.fillglass,
                                      height: 12.h,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Apptexts.Intake,
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      Apptexts.glass2,
                                      style: TextStyle(
                                        fontSize: 6.5.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        Container(
                            height: 57.h,
                            width: 130.w,
                            decoration: BoxDecoration(
                              color: AppColors.whiteTextColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.12), // Shadow color
                                  spreadRadius: 4, // Spread radius
                                  blurRadius: 9, // Blur radius
                                  offset: Offset(
                                      0, 4), // Offset in the x and y direction
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 33.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.Profilecircle,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      Appasset.unfillglass,
                                      height: 12.h,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 13.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Apptexts.Remaings,
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Text(
                                      Apptexts.glass2,
                                      style: TextStyle(
                                        fontSize: 6.5.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: SizedBox(
                      height: 140.h, // Fixed height of SizedBox
                      width: 315.w,
                      child: SingleChildScrollView(
                        child: Obx(() {
                          int itemCount = controller.filledStates.length;
                          int rowCount = (itemCount / 5)
                              .ceil(); // Calculate number of rows
                          double contentHeight = 100.h *
                              rowCount
                                  .toDouble(); // Calculate content height based on rows

                          return Container(
                            height: contentHeight,
                            child: GridView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: itemCount + 1, // +1 for the plus glass
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1.8,
                                crossAxisCount: 5,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                if (index == itemCount) {
                                  // Last item is the plus glass
                                  return GestureDetector(
                                    onTap: () {
                                      controller.addGlass();
                                    },
                                    child: SvgPicture.asset(
                                      Appasset.plusglass,
                                    ),
                                  );
                                } else {
                                  // Normal glass items
                                  return GestureDetector(
                                    onTap: () {
                                      controller.toggleFill(index);
                                    },
                                    child: SvgPicture.asset(
                                      controller.filledStates[index]
                                          ? Appasset.fillglasssvg
                                          : Appasset.glasss,
                                    ),
                                  );
                                }
                              },
                              physics: NeverScrollableScrollPhysics(),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(BottomNavBarScreen(),
                          binding: BottomNavBarBinding());
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
                          Apptexts.done,
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
          ],
        ),
      ),
    );
  }
}
