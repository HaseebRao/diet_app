import 'dart:math';
import 'package:diet_app/module/payment_module/subscription/controller/subscription_controller.dart';
import 'package:diet_app/module/payment_module/subscriptionmethod/binding/subsmethod_binding.dart';
import 'package:diet_app/module/payment_module/subscriptionmethod/view/subsmethod_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35.h,
            ),
            SizedBox(
              height: 35.h,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 17.h,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 200.h,
                    child: PageView.builder(
                      allowImplicitScrolling: true,
                      controller: controller.pageController,
                      onPageChanged: (index) {
                        controller.changePage(index);
                      },
                      itemCount: controller.text.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image(
                              image: AssetImage(controller.text[index].image),
                              height: 151.h,
                              width: 169.w,
                              fit: BoxFit.scaleDown,
                            ),
                            Text(
                              'Personalized diet plan to enhance \nyour lifestyle.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.7.h,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Obx(() => Container(
                                    height: min(6, 6),
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color:
                                          controller.currentPage.value == index
                                              ? const Color(0xff78B0A3)
                                              : const Color(0xffBBD7D1),
                                    ),
                                  )),
                            )),
                  ),
                  SizedBox(
                    height: 259.h,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 13.h),
                          child: GestureDetector(
                            onTap: () {
                              controller.handleContainerTap(index);
                            },
                            child: Obx(
                              () => Container(
                                height: 65
                                    .h, // Adjusted height to accommodate two texts
                                width: 220.w,
                                decoration: BoxDecoration(
                                  color: index ==
                                          controller
                                              .selectedContainerIndex.value
                                      ? AppColors.Profilecircle
                                      : AppColors.Profilecircles.withOpacity(
                                          0.3),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Container(
                                        height: 17.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                            color: controller
                                                        .selectedContainerIndex
                                                        .value ==
                                                    index
                                                ? AppColors.whiteTextColor
                                                : Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: controller
                                                            .selectedContainerIndex
                                                            .value ==
                                                        index
                                                    ? Colors.transparent
                                                    : AppColors
                                                        .blackTextColor)),
                                        child: Icon(
                                          Icons.done,
                                          size: 10,
                                          color: controller
                                                      .selectedContainerIndex
                                                      .value ==
                                                  index
                                              ? AppColors.Profilecircle
                                              : Colors.transparent,
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              controller.text[index].texts,
                                              style: TextStyle(
                                                fontSize: 12.8.h,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
                                                color: index ==
                                                        controller
                                                            .selectedContainerIndex
                                                            .value
                                                    ? AppColors
                                                        .whiteTextColor // Change text color when container is tapped
                                                    : AppColors
                                                        .blackTextColor, // Otherwise, use black text color
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                                height:
                                                    1), // Added SizedBox for spacing
                                            Text(
                                              controller
                                                  .text[index].differentTexts,
                                              style: TextStyle(
                                                fontSize:
                                                    12, // Adjusted font size
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
                                                color: index ==
                                                        controller
                                                            .selectedContainerIndex
                                                            .value
                                                    ? AppColors
                                                        .whiteTextColor // Change text color when container is tapped
                                                    : AppColors
                                                        .blackTextColor, // Otherwise, use black text color
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // SizedBox(width: 10.w,),
                                      // Visibility(
                                      SizedBox(
                                        width: 28.w,
                                      ),
                                      Visibility(
                                        visible: index == 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            // Handle save button tap action
                                            print('Save button tapped!');
                                          },
                                          child: Container(
                                            width: 75.w,
                                            height: 24.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.whiteTextColor,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                Apptexts.savetext,
                                                style: TextStyle(
                                                  fontSize: 11.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color:
                                                      AppColors.Profilecircle,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    Apptexts.subscriptiontext,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Apptexts.substext,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.ifyoucolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        Apptexts.substext1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.Profilecircle,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectContainer();
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
                          Apptexts.buynow,
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
            )
          ],
        ),
      ),
    );
  }
}
