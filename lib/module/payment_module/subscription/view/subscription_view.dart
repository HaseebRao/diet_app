// subscription_view.dart
import 'package:diet_app/module/payment_module/subscriptionmethod/binding/subsmethod_binding.dart';
import 'package:diet_app/module/payment_module/subscriptionmethod/view/subsmethod_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/subscription_controller.dart';

class SubscriptionView extends GetView<SubscriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 25.h,
              child: IconButton(
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    Get.back();
                  }, icon: SvgPicture.asset(Appasset.Arrowdiet)),
            ),
            Container(
              height: 195.h,
              child: ImageSlideshow(
                indicatorBackgroundColor:
                    AppColors.Profilecircles.withOpacity(0.5),
                indicatorRadius: 4,
                indicatorPadding: 30,
                indicatorBottomPadding: 4,
                indicatorColor: AppColors.Profilecircle,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 0,
                isLoop: true,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          height: 130.h,
                          width: 120.w,
                          'assets/images/subscription2.png',
                        ),
                        SizedBox(
                          width: 240.w,
                          child: Text(
                            Apptexts.subscription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          height: 130.h,
                          width: 120.w,
                          'assets/images/subscription1.png',
                        ),
                        SizedBox(
                          width: 240.w,
                          child: Text(
                            Apptexts.subscription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          height: 130.h,
                          width: 120.w,
                          'assets/images/subscription3.png',
                        ),
                        SizedBox(
                          width: 240.w,
                          child: Text(
                            Apptexts.subscription,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 255.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 17.h),
                    child: GestureDetector(
                      onTap: () {
                        controller.handleContainerTap(index);
                      },
                      child: Obx(
                        () => Container(
                          height:
                              65.h, // Adjusted height to accommodate two texts
                          width: 220.w,
                          decoration: BoxDecoration(
                            color:
                                index == controller.selectedContainerIndex.value
                                    ? AppColors.Profilecircle
                                    : AppColors.Profilecircles.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 12.w,),
                               Container(
                                 height: 17.h,
                                 width: 17.w,
                                 decoration: BoxDecoration(
                                 color:controller.selectedContainerIndex.value==index?AppColors.whiteTextColor: Colors.transparent,
                                   shape: BoxShape.circle,
                                   border: Border.all(color:controller.selectedContainerIndex.value==index?Colors.transparent: AppColors.blackTextColor)
                                 ),
                                 child: Icon(Icons.done,size: 10,color: controller.selectedContainerIndex.value==index?AppColors.Profilecircle: Colors.transparent,),
                               ),
                                SizedBox(width: 8.w),
                                Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        controller.text[index].texts,
                                        style: TextStyle(
                                          fontSize: 12.8.h,
                                          fontFamily: ApptextStyle.fontfamily,
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
                                        controller.text[index].differentTexts,
                                        style: TextStyle(
                                          fontSize: 12, // Adjusted font size
                                          fontFamily: ApptextStyle.fontfamily,
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
                                SizedBox(width: 28.w,),
                                Visibility(
                                  visible: index == 2 ,
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
                                        borderRadius: BorderRadius.circular(5),

                                      ),
                                      child: Center(
                                        child: Text(
                                          Apptexts.savetext,
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.Profilecircle,
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
SizedBox(height: 10.h,),
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
            SizedBox(height: 7.h,),
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
                    color: AppColors. Profilecircle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(SubsmethodView(),binding: SubsmethodBinding(),);
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
      ),
    );
  }
}
