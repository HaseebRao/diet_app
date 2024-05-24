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

class ProgresVeiw extends GetView<ProgressController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProgressController>(
      init: ProgressController(),
      builder: (controller) {
        return Scaffold(
          // backgroundColor: AppColors.whiteTextColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 47.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => BottomNavBarScreen(), binding: BottomNavBarBinding());
                      },
                      child: SvgPicture.asset(Appasset.Arrowdiet, height: 17.h),
                    ),
                    Spacer(),
                    SvgPicture.asset(Appasset.progress, height: 24.h),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Apptexts.progress,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.Profiletexts ,
                            fontWeight: FontWeight.w700,
                          ),),
                        SizedBox(height: 8.h,),
                        Text(
                          Apptexts.progressno,
                          style: TextStyle(
                            fontSize: 26.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.Profiletexts ,
                            fontWeight: FontWeight.w700,
                          ),),
                        Text(
                          Apptexts.cal,
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.dblack.withOpacity(0.8),
                            fontWeight: FontWeight.w600,
                          ),),
                      ],
                    ),
                    SizedBox(width: 80.w,),
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
                                pointColorMapper: (ChartData data, _) => data.color,
                                radius: '115%',
                                innerRadius: '80%',
                                name: 'Gold',
                                cornerStyle: CornerStyle.bothFlat,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                Apptexts. calorie,
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  fontWeight: FontWeight.w700,
                                  color:AppColors.dblack.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                Apptexts.numbr,
                                style: TextStyle(
                                  fontSize: 18.sp,
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
                SizedBox(height: 20.h),
                Container(
                  height: 210.h,
                  decoration: BoxDecoration(
                    color: AppColors.whiteTextColor,
                    borderRadius: BorderRadius.circular(12),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     spreadRadius: 2,
                    //     blurRadius: 4,
                    //     offset: Offset(0, 1),
                    //   ),
                    // ],
                  ),

                    child:
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Column(
                            children: [
                              Container(
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 39.h,
                                        width: 42.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.backcolors.withOpacity(0.6),
                                            borderRadius: BorderRadius.circular(100)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: SvgPicture.asset(
                                            Appasset.progress,
                                            color: AppColors.Profilecircle,
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
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      Apptexts.Calories,
                                                      style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontFamily:
                                                        ApptextStyle.fontfamily,
                                                        color:
                                                        AppColors.blackTextColor,
                                                        fontWeight: FontWeight.w500,
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
                                              height: 10.h,
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
                                                stroke: 8.5,
                                                round:
                                                true, // Set this to true to enable rounded corners
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(height: 15.h,),
                              Container(
                                height: 0.3.h,
                                width: 290.w,
                                decoration: BoxDecoration(
                                  color: AppColors.dblack.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 14.h,),
                              Container(
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 39.h,
                                        width: 42.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.backcolors.withOpacity(0.6),
                                            borderRadius: BorderRadius.circular(100)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: SvgPicture.asset(
                                            Appasset.chamuch,
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
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(

                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      Apptexts.nCarbs,
                                                      style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontFamily:
                                                        ApptextStyle.fontfamily,
                                                        color:
                                                        AppColors.blackTextColor,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                SizedBox(
                                                  width: 180.w,
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
                                                stroke: 8.5,
                                                round:
                                                true, // Set this to true to enable rounded corners
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                height: 0.3.h,
                                width: 290.w,
                                decoration: BoxDecoration(
                                  color: AppColors.dblack.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 39.h,
                                        width: 42.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.backcolors.withOpacity(0.6),
                                            borderRadius: BorderRadius.circular(100)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(11.0),
                                          child: SvgPicture.asset(
                                            Appasset.drop,
                                            color: AppColors.purple,
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
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      Apptexts.Fat,
                                                      style: TextStyle(
                                                        fontSize: 11.sp,
                                                        fontFamily:
                                                        ApptextStyle.fontfamily,
                                                        color:
                                                        AppColors.blackTextColor,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 130.w,
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
                                                stroke: 8.5,
                                                round:
                                                true, // Set this to true to enable rounded corners
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                             
                            ],
                          ),
                        )

                )
              ],
            ),
          ),
        );
      },
    );
  }
}

