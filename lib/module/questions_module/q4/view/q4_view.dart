import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/questions_module/q5/binding/q5_binding.dart';
import 'package:diet_app/module/questions_module/q5/view/q5_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';
import '../controller/q4_controller.dart';

class Q4View extends GetView<Q4Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45.h,
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
                  Apptexts.hading,
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
              height: 5.h,
            ),
            LinearProgressIndicator(
              value: 0.65, // 20% filled
              minHeight: 10.h,
              backgroundColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
            ),
            SizedBox(
              height: 72.h,
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                Apptexts.tell,
                style: TextStyle(
                  fontSize: 20.2.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            SizedBox(height: 40.h),
            Column(
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Day",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Month",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Container(
                      height: 185.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: SizedBox(
                        height: 180.h,
                        width: 93,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.days.length,
                          itemBuilder: (context, index) {
                            var product = controller.days[index];
                            return GestureDetector(
                              onTap: () {
                                controller.slectedDay.value = index;
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 17.h),
                                child: Obx(
                                  () => SizedBox(
                                    height: 27.h,
                                    child: Text(
                                      "${product.day}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            controller.slectedDay.value == index
                                                ? 19.sp
                                                : 11.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight:
                                            controller.slectedDay.value == index
                                                ? FontWeight.w800
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 33.w),
                    Container(
                      height: 185.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: SizedBox(
                        height: 180.h,
                        width: 93,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.months.length,
                          itemBuilder: (context, index) {
                            var product = controller.months[index];
                            return GestureDetector(
                              onTap: () {
                                controller.selectedMonth.value = index;
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: Obx(
                                  () => SizedBox(
                                    height: 27.h,
                                    child: Text(
                                      "${product.month}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            controller.selectedMonth.value ==
                                                    index
                                                ? 19.sp
                                                : 11.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight:
                                            controller.selectedMonth.value ==
                                                    index
                                                ? FontWeight.w700
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 33.w),
                    Container(
                      height: 185.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: SizedBox(
                        height: 180.h,
                        width: 93,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: controller.years.length,
                          itemBuilder: (context, index) {
                            var year = controller.years[index];
                            return GestureDetector(
                              onTap: () {
                                controller.selectedYear.value = index;
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 15.h),
                                child: Obx(
                                  () => SizedBox(
                                    height: 27.h,
                                    child: Text(
                                      "${year.year}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize:
                                            controller.selectedYear.value ==
                                                    index
                                                ? 19.sp
                                                : 11.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.blackTextColor,
                                        fontWeight:
                                            controller.selectedYear.value ==
                                                    index
                                                ? FontWeight.w700
                                                : FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70.h),
                Container(
                  height: 45.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.Profilecircle),
                  ),
                  child: Center(
                    child: Obx(
                      () {
                        int selectedDayIndex = controller.slectedDay.value;
                        int selectedMonthIndex = controller.selectedMonth.value;
                        int selectedYearIndex = controller.selectedYear.value;

                        String day = selectedDayIndex >= 0 &&
                                selectedDayIndex < controller.days.length
                            ? controller.days[selectedDayIndex].day
                            : '';
                        String month = selectedMonthIndex >= 0 &&
                                selectedMonthIndex < controller.months.length
                            ? controller.months[selectedMonthIndex].month
                            : '';
                        String year = selectedYearIndex >= 0 &&
                                selectedYearIndex < controller.years.length
                            ? controller.years[selectedYearIndex].year
                            : '';

                        return Text(
                          '$day $month $year',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.Profilecircle ,
                            fontWeight: FontWeight.w800,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),

     SizedBox(height: 45.h,),

            GestureDetector(
              onTap: () {
                Get.to(Q5View(),binding: Q5Binding(),);
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
