import 'package:diet_app/module/homepage_module/diary/controller/diary_controller.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class DiaryView extends GetView<DiaryController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DiaryController>();

    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Column(
        children: [
          Container(
            height: 135.h,
            decoration: BoxDecoration(
              color: AppColors.Profilecircle,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Get.to(BottomNavBarScreen(), binding: BottomNavBarBinding(),),
                        icon: SvgPicture.asset(
                          Appasset.Arrowdiet,
                          height: 15.8.h,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Apptexts.diary,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            Apptexts.wednesday,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => controller.selectText(Apptexts.Daily),
                          child: Obx(() => Text(
                            Apptexts.Daily,
                            style: TextStyle(
                              fontSize: controller.selectedText.value == Apptexts.Daily ? 14.sp : 13.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.selectedText.value == Apptexts.Daily ? AppColors.whiteTextColor : AppColors.Profile,
                              fontWeight: controller.selectedText.value == Apptexts.Daily ? FontWeight.w700 : FontWeight.w400,
                            ),
                          )),
                        ),
                        GestureDetector(
                          onTap: () => controller.selectText(Apptexts.Weekly),
                          child: Obx(() => Text(
                            Apptexts.Weekly,
                            style: TextStyle(
                              fontSize: controller.selectedText.value == Apptexts.Weekly ? 14.sp : 13.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.selectedText.value == Apptexts.Weekly ? AppColors.whiteTextColor : AppColors.Profile,
                              fontWeight: controller.selectedText.value == Apptexts.Weekly ? FontWeight.w700 : FontWeight.w400,
                            ),
                          )),
                        ),
                        GestureDetector(
                          onTap: () => controller.selectText(Apptexts.Monthly),
                          child: Obx(() => Text(
                            Apptexts.Monthly,
                            style: TextStyle(
                              fontSize: controller.selectedText.value == Apptexts.Monthly ? 14.sp : 13.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.selectedText.value == Apptexts.Monthly ? AppColors.whiteTextColor : AppColors.Profile,
                              fontWeight: controller.selectedText.value == Apptexts.Monthly ? FontWeight.w700 : FontWeight.w400,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35.h,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => controller.selectIndex(index),
                        child: Obx(() => Row(
                          children: [
                            Container(
                              height: 33.h,
                              width: 34.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: controller.selectedIndex.value == index
                                    ? AppColors.Profilecircle
                                    : Colors.transparent,
                                border: Border.all(
                                  color: AppColors.Profilecircle,
                                  width: 1.3.w,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  controller.text1[index].toString(),
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: controller.selectedIndex.value == index
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            if (index < 6)
                              Container(
                                height: 1.4.h,
                                width: 15.w,
                                decoration: BoxDecoration(
                                  color: AppColors.Profilecircle,
                                ),
                              ),
                          ],
                        )),
                      );
                    },
                  ),
                ),
                SizedBox(height: 50.h,),
                Center(
                  child: SizedBox(
                    height: 115.h,
                    width: 310.w,
                    child: ListView.builder(
                        itemCount: controller.modelclass.length,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Padding(
                            padding:  EdgeInsets.only(right: 15.w,top: 5.h,bottom: 5.h,left: 5.w),
                            child: Container(
                              width: 87.w,
                              decoration: BoxDecoration(
                                color: AppColors.whiteTextColor,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 15.h,),
                                  Container(
                                    height: 33.h,
                                    width: 34.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.Profilecircle,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.all(6.3),
                                      child: SvgPicture.asset(
                                       controller.modelclass[index].image,
                                        height: 12.h,
                                        color: AppColors.whiteTextColor,
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 10.h,),
                                  Text(
                                  controller.modelclass[index].text1,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: AppColors.blackTextColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5.h,),
                                  Text(
                                  controller.modelclass[index].text2,
                                    style: TextStyle(
                                      fontSize: 7.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: AppColors.blackTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          );
                        }),
                  ),
                ),
SizedBox(height: 5.h,),
Row(
  children: [
    SizedBox(width: 40,height: 313,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
            return    Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
    GestureDetector(
    onTap: () => controller.toggleFill(index),
    child: Obx(() {
    return
                Container(
                  height: 19.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellowdark),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 14.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                        color: controller.fillStates[index].value
                            ? AppColors.yellowdark
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                );
    }),
    ),
                if(index<controller.modelclas.length-1)
                  SizedBox(
                    height: 53.h,
                    child: DottedLine(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashColor: AppColors.yellowdark,
                      dashRadius: 0.0,
                      dashGapLength: 3.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  )
                else
                  SizedBox(
                    height: 42.h,
                    child: DottedLine(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashColor: Colors.transparent,
                      dashRadius: 0.0,
                      dashGapLength: 3.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  )
              ],
            );
          }),
    ),
    SizedBox(width: 3.w,),
    SizedBox(height: 300.h,
      width: 290.w,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: controller.modelclas.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

             Spacer(),
                Padding(
                  padding:  EdgeInsets.only(bottom: 16.h),
                  child: Container(
                    height: 55.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      color: AppColors.whiteTextColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.coloroff)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12.w,),
                        Container(
                          height: 36.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                            color: AppColors.Profilecircle,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                            controller.modelclas[index].svgpath,
                              height: 15.8.h,
                              color: AppColors.whiteTextColor,
                            ),
                          ),
                        ),
                  SizedBox(width: 15.w,),
                        Text(
                         controller.modelclas[index].breakfast,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        // Spacer(),
                    Text(
                   controller.modelclas[index].lunch,
                    style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                  ),
                  ),
                        SizedBox(width: 12.w,),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    ),
  ],
)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
