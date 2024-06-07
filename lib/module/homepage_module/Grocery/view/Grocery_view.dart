import 'package:diet_app/module/homepage_module/Grocery/controller/Grocery_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class GroceryView extends GetView<GroceryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.w),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Get.to(BottomNavBarScreen(),binding: BottomNavBarBinding()),
                  icon: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 15.8.h,
                    color: AppColors.blackTextColor,
                  ),
                ),
                Text(
                  Apptexts.Grocerylist,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 45.w,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            Apptexts.value16,
                            style: TextStyle(
                              fontSize: 9.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            Apptexts.pendingitems,
                            style: TextStyle(
                              fontSize: 6.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 26.w,
                              decoration: BoxDecoration(
                                color: AppColors.Profilecircle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: SvgPicture.asset(
                                  Appasset.backarrow,
                                  height: 7.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                              height: 24.h,
                              width: 82.w,
                              decoration: BoxDecoration(
                                color: AppColors.Profilecircle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  Apptexts.week,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.whiteTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                              height: 24.h,
                              width: 26.w,
                              decoration: BoxDecoration(
                                color: AppColors.Profilecircle,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15.5.h,
                                  color: AppColors.whiteTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            Apptexts.itemsadded,
                            style: TextStyle(
                              fontSize: 7.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            Apptexts.itemsremaining,
                            style: TextStyle(
                              fontSize: 7.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 532.h,
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Obx(
                              () => Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.w),
                                child: Container(
                                  height: 48.h,
                                  width: 315.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.borderofCon),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.grey.withOpacity(0.3),
                                    //     spreadRadius: 1,
                                    //     blurRadius: 6,
                                    //     offset: Offset(0, 2),
                                    //   ),
                                    // ],

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          controller.texts[index].toString(),
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.blackTextColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => controller.toggleDropdown(index),
                                          child: Icon(
                                            controller.isDropdownOpen[index]
                                                ? Icons.keyboard_arrow_up_sharp
                                                : Icons.keyboard_arrow_down_sharp,size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (controller.isDropdownOpen[index])
                                Padding(
                                  padding: EdgeInsets.only(bottom:30.h),
                                  child: Container(
                                    height: 230.h,
                                    width: 315.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteTextColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: SizedBox(
                                      height: 80.h,
                                      child: ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        itemCount: controller.texts.length,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.w, vertical: 5.h),
                                            child: Container(
                                              height: 34.h,
                                              width: 256.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteTextColor,
                                                border: Border.all(
                                                    color: AppColors.graycolor),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(left: 20.w),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      controller.texts[index].toString(),
                                                      style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontFamily:
                                                        ApptextStyle.fontfamily,
                                                        color: AppColors.blackTextColor,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        );
                      },
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
