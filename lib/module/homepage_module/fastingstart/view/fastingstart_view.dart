import 'package:diet_app/module/homepage_module/fastingstart/controller/fastingstart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class FastingstartView extends GetView<FastingstartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Get.to(BottomNavBarScreen(), binding: BottomNavBarBinding(),),
                    icon: SvgPicture.asset(
                      Appasset.Arrowdiet,
                      height: 15.8.h,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  Text(
                    Apptexts.fasting,
                    style: TextStyle(
                      fontSize: 21.5.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  children: [
                    Obx(() => CircularPercentIndicator(
                          backgroundColor: AppColors.wellcome.withOpacity(0.8),
                          radius: 142.0.h,
                          lineWidth: 16.5.h,
                          percent: controller.percent.value,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                Apptexts.fastingwill,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Obx(() => Text(
                                    "${controller.hours}",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: AppColors.blackTextColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  )),
                              SizedBox(height: 15.h),
                              GestureDetector(
                                onTap: () {
                                  if (controller.stop.value) {
                                    controller.stopFasting();
                                  } else {
                                    controller.startFasting();
                                  }
                                  controller.stop.value =
                                      !controller.stop.value;
                                },
                                child: Obx(() => Container(
                                      height: 39.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        color: controller.stop.value
                                            ? AppColors.yellow
                                            : AppColors.Profilecircle,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          controller.stop.value
                                              ? "End Fasting"
                                              : Apptexts.start,
                                          style: TextStyle(
                                            fontSize: 17.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.whiteTextColor,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          progressColor: AppColors.Profilecircle,
                        )),
                    SizedBox(height: 15.h),
                    Obx(() => Row(
                          children: [
                            Text(
                              "         Started\n ${controller.startTime}",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "  End Fasting\nTime ${controller.hours}",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 28.h,
                    ),
                    Container(
                      height: 0.3.h,
                      color: AppColors.opacityWhiteColor,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Appasset.fasting,
                          height: 68.h,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Apptexts.fatburn,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 190.w,
                              child: Text(
                                Apptexts.fattext,
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.fastingtext,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Container(
                      height: 0.3.h,
                      color: AppColors.opacityWhiteColor,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Apptexts.moodtext,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.fastingtext,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 90.h,
                        width: 250.w,
                        child: ListView.builder(
                          itemCount: controller.items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final item = controller.items[index];
                            return GestureDetector(
                              onTap: () => controller.selectItem(index),
                              child: Padding(
                                padding: EdgeInsets.only(left: 14.w),
                                child: Obx(() {
                                  bool isSelected =
                                      controller.selectedIndex.value == index;
                                  return Column(
                                    children: [
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        height: isSelected ? 55.h : 45.h,
                                        width: isSelected ? 58.w : 48.w,
                                        decoration: BoxDecoration(
                                          color: isSelected
                                              ? AppColors.Profilecircle
                                              : AppColors.Profile,
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            item.svgPath,
                                            height: 8.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        item.text,
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontFamily: ApptextStyle.fontfamily,
                                          color: AppColors.blackTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Apptexts.graphtext,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.fastingtext,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      height: 130.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SfCartesianChart(
                          margin: EdgeInsets.all(10),
                          backgroundColor: AppColors.whiteTextColor,
                          primaryXAxis: CategoryAxis(
                            arrangeByIndex: true,
                            labelStyle: TextStyle(
                                color: AppColors.blackTextColor,
                                fontFamily: ApptextStyle.fontfamily,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                            axisLine: AxisLine(width: 0),
                            majorTickLines: MajorTickLines(size: 0),
                          ),
                          primaryYAxis: NumericAxis(
                            axisLine: const AxisLine(
                              width: 0,
                            ),
                            labelStyle: TextStyle(
                                color: Colors
                                    .transparent, // Make labels transparent
                                fontFamily: ApptextStyle.fontfamily,
                                fontSize: 0.sp,
                                fontWeight: FontWeight.w400),
                            majorTickLines: const MajorTickLines(
                                size: 0, color: Colors.transparent),
                          ),
                          series: <CartesianSeries<dynamic, dynamic>>[
                            ColumnSeries<dynamic, dynamic>(
                              trackColor: Color(0xff9A9788).withOpacity(0.2),
                              isTrackVisible: true,
                              trackPadding: 0,
                              opacity: 0.9,
                              borderRadius: BorderRadius.circular(6),
                              dataSource: controller.chartData,
                              xValueMapper: (data, _) => data.x,
                              yValueMapper: (data, _) => data.y,
                              pointColorMapper: (data, _) =>
                                  AppColors.Profilecircle,
                              width: 0.9,
                              spacing: 0.45,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
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
