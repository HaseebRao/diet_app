import 'package:diet_app/module/homepage_module/progress/controller/progress_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class ProgressView extends GetView<ProgressController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProgressController>(
      init: ProgressController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.whiteTextColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                children: [
                  SizedBox(height: 42.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(Appasset.progress, height: 18.h),
                    ],
                  ),
                  SizedBox(height: 13.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Apptexts.progress,
                            style: TextStyle(
                              fontSize: 12.5.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.Profiletexts,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            Apptexts.progressno,
                            style: TextStyle(
                              fontSize: 26.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.Profiletexts,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            Apptexts.cal,
                            style: TextStyle(
                              fontSize: 10.8.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.dblack.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 82.w,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 111.h,
                            width: 111.w,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.5),
                              //     spreadRadius: 5,
                              //     blurRadius: 7,
                              //     offset: Offset(0, 3),
                              //   ),
                              // ],
                            ),
                            child: SfCircularChart(
                              tooltipBehavior: controller.tooltip,
                              series: <CircularSeries<ChartData, String>>[
                                DoughnutSeries<ChartData, String>(
                                  dataSource: controller.data,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  pointColorMapper: (ChartData data, _) =>
                                      data.color,
                                  radius: '117%',
                                  innerRadius: '82%',
                                  name: 'Gold',
                                  cornerStyle: CornerStyle.bothFlat,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 18.w,
                            top: 42.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  Apptexts.calorie,
                                  style: TextStyle(
                                    fontSize: 8.3.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.dblack.withOpacity(0.6),
                                  ),
                                ),
                                Text(
                                  Apptexts.numbr,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Container(
                      height: 190.h,
                      decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Container(
                                height: 50.h,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 38.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.backcolors
                                            .withOpacity(0.6),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: SvgPicture.asset(
                                          Appasset.dropicon,
                                          color: AppColors.Profilecircle,
                                          height: 12.h,
                                        ),
                                      ),
                                    ),
                                    // Container(height: 30.h,
                                    //   width: 20.w,
                                    //   color: AppColors.account,),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    Apptexts.Calories,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .blackTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 142.w,
                                              ),
                                              Text(
                                                Apptexts.kcaol,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Container(
                                            width: 245.w,
                                            height: 0.h,
                                            decoration: BoxDecoration(),
                                            child: BarProgress(
                                              percentage: 70.0,
                                              backColor: AppColors.backcolors,
                                              gradient: LinearGradient(colors: [
                                                AppColors.Profilecircle,
                                                AppColors.Profilecircle
                                              ]),
                                              showPercentage: true,
                                              textStyle: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 0),
                                              stroke: 7.5,
                                              round:
                                                  true, // Set this to true to enable rounded corners
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 5.5.h,
                            ),
                            Container(
                              height: 0.3.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                color: AppColors.dblack.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                                height: 50.h,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 38.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.backcolors
                                            .withOpacity(0.6),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: SvgPicture.asset(
                                          Appasset.tree,
                                          color: AppColors.blues,
                                          height: 13.h,
                                        ),
                                      ),
                                    ),
                                    // Container(height: 30.h,
                                    //   width: 20.w,
                                    //   color: AppColors.account,),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    Apptexts.nCarbs,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .blackTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 183.w,
                                              ),
                                              Text(
                                                Apptexts.carbsg,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Container(
                                            width: 245.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(),
                                            child: BarProgress(
                                              percentage: 48.0,
                                              backColor: AppColors.backcolors,
                                              gradient: LinearGradient(colors: [
                                                AppColors.blues,
                                                AppColors.blues
                                              ]),
                                              showPercentage: true,
                                              textStyle: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 0),
                                              stroke: 7.5,
                                              round:
                                                  true, // Set this to true to enable rounded corners
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 5.5.h,
                            ),
                            Container(
                              height: 0.3.h,
                              width: 290.w,
                              decoration: BoxDecoration(
                                color: AppColors.dblack.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Container(
                                height: 50.h,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 38.h,
                                      width: 40.w,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 39.h,
                                            width: 42.w,
                                            decoration: BoxDecoration(
                                              color: AppColors.backcolors
                                                  .withOpacity(0.6),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(13.0),
                                              child: SvgPicture.asset(
                                                Appasset.fat,
                                                color: AppColors.purple,
                                                height: 13.h,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 19.h,
                                            left: 17.w,
                                            child: Text(
                                              Apptexts.success3,
                                              style: TextStyle(
                                                fontSize: 4.sp,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
                                                color: AppColors.purple,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Container(height: 30.h,
                                    //   width: 20.w,
                                    //   color: AppColors.account,),
                                    SizedBox(
                                      width: 11.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    Apptexts.Fat,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .blackTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 195.w,
                                              ),
                                              Text(
                                                Apptexts.fatg,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Container(
                                            width: 245.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(),
                                            child: BarProgress(
                                              percentage: 38.0,
                                              backColor: AppColors.backcolors,
                                              gradient: LinearGradient(colors: [
                                                AppColors.purple,
                                                AppColors.purple
                                              ]),
                                              showPercentage: true,
                                              textStyle: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 0),
                                              stroke: 7.5,
                                              round:
                                                  true, // Set this to true to enable rounded corners
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Apptexts.bar,
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        Apptexts.bare,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.dblack,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    height: 135.h,
                    child: SfCartesianChart(
                      enableSideBySideSeriesPlacement: true,
                      plotAreaBorderColor: Colors.transparent,
                      plotAreaBorderWidth: 0,
                      margin: EdgeInsets.zero,
                      backgroundColor: AppColors.whiteTextColor,
                      primaryXAxis: CategoryAxis(
                        majorGridLines: MajorGridLines(
                            color: Colors
                                .transparent // Make grid lines transparent
                            ),
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
                            color:
                                Colors.transparent, // Make labels transparent
                            fontFamily: ApptextStyle.fontfamily,
                            fontSize: 0.sp,
                            fontWeight: FontWeight.w400),
                        majorGridLines: MajorGridLines(
                            color: Colors
                                .transparent // Make grid lines transparent
                            ),
                        majorTickLines: const MajorTickLines(
                            size: 0, color: Colors.transparent),
                      ),
                      series: <CartesianSeries<dynamic, dynamic>>[
                        ColumnSeries<dynamic, dynamic>(
                          trackColor: Color(0xff9A9788).withOpacity(0.2),
                          isTrackVisible: true,
                          trackPadding: 0,
                          opacity: 0.9,
                          borderRadius: BorderRadius.circular(25),
                          dataSource: controller.chartData,
                          xValueMapper: (data, _) => data.x,
                          yValueMapper: (data, _) => data.y,
                          pointColorMapper: (data, _) =>
                              AppColors.Profilecircle,
                          width: 0.7,
                          spacing: 0.45,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    height: 35.h,
                    width: 145.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.Profilecircle),
                    ),
                    child: Center(
                      child: Text(
                        Apptexts.baree,
                        style: TextStyle(
                          fontSize: 9.7.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.Profilecircle,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
