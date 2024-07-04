import 'package:diet_app/module/homepage_module/homepage/binding/homepage_binding.dart';
import 'package:diet_app/module/homepage_module/homepage/view/homepage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../controller/addwhatyouwant_controller.dart';

class AddwhatyouwantView extends GetView<AddwhatyouwantController> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 37,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: SvgPicture.asset(
                          Appasset.Arrowdiet,
                          height: 21.h,
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  Spacer(),
                  SvgPicture.asset(Appasset.notification, height: 17.h),
                  SizedBox(
                    width: 11.w,
                  ),
                ],
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Apptexts.Michael,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      Apptexts.cheatday,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.fastingtext,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      Apptexts.selectday,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    HorizontalWeekCalendar(
                      minDate: DateTime(2023, 12, 31),
                      maxDate: DateTime(2025, 1, 31),
                      initialDate: DateTime(2024, 1, 15),
                      onDateChange: (date) {
                        controller.updateDate(date);
                      },
                      showTopNavbar: false,
                      monthFormat: "MMMM yyyy",
                      showNavigationButtons: true,
                      weekStartFrom: WeekStartFrom.Monday,
                      borderRadius: BorderRadius.circular(7),
                      activeBackgroundColor: AppColors.Profilecircle,
                      activeTextColor: Colors.white,
                      inactiveBackgroundColor: AppColors.wellcome,
                      inactiveTextColor: AppColors.Logindivider,
                      disabledTextColor: Colors.grey,
                      disabledBackgroundColor: Colors.grey.withOpacity(.3),
                      activeNavigatorColor: AppColors.Profilecircle,
                      inactiveNavigatorColor: Colors.grey,
                      monthColor: AppColors.Profilecircle,
                    ),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Apptexts.mealIntake,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 100.h,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.mealItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.changecolor.value = index;
                            },
                            child: Padding(
                                padding: EdgeInsets.only(right: 13.w),
                                child: Obx(
                                  () => Container(
                                    height: 100.h,
                                    width: 95.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: controller.changecolor.value ==
                                              index
                                          ? AppColors.Profilecircle
                                          : AppColors
                                              .whiteTextColor, // Use the color from the item
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          controller.mealItems[index].svgAsset,
                                          height: 35.h,
                                          color: controller.changecolor.value ==
                                                  index
                                              ? AppColors.whiteTextColor
                                              : AppColors.opacityGreyColor,
                                        ),
                                        SizedBox(height: 7.h),
                                        Text(
                                          controller.mealItems[index].text,
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color:
                                                controller.changecolor.value ==
                                                        index
                                                    ? Colors.white
                                                    : AppColors.blackTextColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Apptexts.customfood,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextFormField(
                        controller: controller.customFoodController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: AppColors.iconcolor,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 115.h,
                    ),
                    // Spacer(),
                    GestureDetector(
                      onTap: () {
                        controller.validation();
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
                            Apptexts.Add,
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
      ),
    );
  }
}
