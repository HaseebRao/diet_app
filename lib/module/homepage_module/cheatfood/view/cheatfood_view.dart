import 'package:diet_app/module/homepage_module/addwhatyouwant/binding/addwhatyouwant_binding.dart';
import 'package:diet_app/module/homepage_module/addwhatyouwant/view/addwhatyouwant_view.dart';
import 'package:diet_app/module/homepage_module/cheatfood/controller/cheatfood_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../../progress/controller/progress_controller.dart';

class CheatfoodView extends GetView<CheatfoodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () =>Get.to(BottomNavBarScreen(), binding: BottomNavBarBinding(),),
                icon: SvgPicture.asset(
                  Appasset.Arrowdiet,
                  height: 15.8.h,
                  color: AppColors.blackTextColor,
                ),
              ),
              Text(
                Apptexts.cheatfood,
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
          SizedBox(height: 20.h,),
          Stack(
            children: [
              Container(
                height: 210.h,
                width: 225.w,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: SfCircularChart(
                  tooltipBehavior: controller.tooltip,
                  series: <CircularSeries<ChartData, String>>[
                    DoughnutSeries<ChartData, String>(
                      dataSource: controller.data,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      pointColorMapper: (ChartData data, _) => data.color,
                      radius: '119%',
                      innerRadius: '89%',
                      name: 'Gold',
                      cornerStyle: CornerStyle.bothFlat,
                    ),
                  ],
                ),
              ),
              Positioned(
                left:27.w,
                top: 30.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        Appasset.cheatgroup,
                        height:160.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              children: [
                Container(
                  height: 43.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                     color: AppColors.whiteTextColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.11),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                   child: Padding(
                     padding:EdgeInsets.symmetric(horizontal: 35.w),
                     child: Row(

                       children: [
                         Container(
                           height: 8.h,
                           width: 8.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(100),
                             color: AppColors.yellow,
                           ),
                         ),
                         SizedBox(width: 8.w,),
                         Text(
                           Apptexts.cheatfoods,
                           style: TextStyle(
                             fontSize: 9.5.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor,
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                         Spacer(),
                         Container(
                           height: 8.h,
                           width: 8.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(100),
                             color: AppColors.Profilecircle,
                           ),
                         ),
                         SizedBox(width: 8.w,),
                         Text(
                           Apptexts.remainingfood,
                           style: TextStyle(
                             fontSize: 9.5.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor,
                             fontWeight: FontWeight.w700,
                           ),
                         ),

                       ],
                     ),
                   ),

                ),
                SizedBox(height: 16.h,),
                Align(
                  alignment:Alignment.topLeft,
                  child: Text(
                    Apptexts.previousfood,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height:15.h,),
                SizedBox(height: 170.h,
                child:ListView.builder(
                  padding: EdgeInsets.all(0),
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder:(context, index){
                      return Padding(
                        padding:EdgeInsets.only(bottom: 15.h),
                        child: Container(
                          height: 43.h,
                          decoration: BoxDecoration(
                        color: AppColors.whiteTextColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.bordercolors,width: 1.w),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 21.w),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Appasset.buttonsvg,
                                  height: 15.8.h,
                                  color: AppColors.yellow,
                                ),
                                SizedBox(width: 10.w,),
                                Text(
                                  Apptexts.dateofcheat,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  Apptexts.cals,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                                Text(
                                  Apptexts.added,
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.Profilecircle,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(AddwhatyouwantView(),binding:AddwhatyouwantBinding(),);
                          },
                          child: Container(
                            height: 35.h,
                            width: 38.w,
                            color: AppColors.Profilecircle,
                            child: Icon(
                              Icons.add,
                              color: AppColors.whiteTextColor,
                              size: 28,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.h,),
                        Text(
                          Apptexts.addWhat,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
