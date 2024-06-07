import 'package:diet_app/module/homepage_module/diet/controller/diet_controller.dart';
import 'package:diet_app/module/homepage_module/plan/binding/plan_binding.dart';
import 'package:diet_app/module/homepage_module/plan/view/plan_view.dart';
import 'package:diet_app/module/homepage_module/seeall/binding/seeall_binding.dart';
import 'package:diet_app/module/homepage_module/seeall/view/seeall_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../../progress/controller/progress_controller.dart';

class DietView extends GetView<DietController>{
  @override
  Widget build(BuildContext context) {
   return
    Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45.h,),
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
                    Apptexts. diets,
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: 1.h,
                    width: 12.w,
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Apptexts.diettext,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      Get.to(PlanView(),binding: PlanBinding(),);
                    },
                    child: Container(height: 27.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                      color: AppColors.Profilecircle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Center(
                      child: Text(
                        Apptexts.myplan,
                        style: TextStyle(
                          fontSize: 10.2.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.whiteTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 13.h),
              Container(
                height: 140.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/diet.png'),
                    fit: BoxFit.fill,
                  ),
          
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w, top: 13.5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Apptexts.ketodiet,
                        style: TextStyle(
                          fontSize: 23.2.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.whiteTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text(
                        Apptexts.calori ,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.whiteTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
          
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 180.w,
                        child:            Row(
                          children: [
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Text(
                              Apptexts.protain ,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              Apptexts. left1,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text(
                              Apptexts.gvalue1,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
          
                      ),
                      SizedBox(height: 11.h,),
                      Container(
                        width: 173.w,
                        height: 0.h,
                        decoration: BoxDecoration(),
                        child: BarProgress(
                          percentage: 35.0,
                          backColor: AppColors.backcolors,
                          gradient: LinearGradient(colors: [
                            AppColors.blue,
                            AppColors.blue
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
          SizedBox(height: 15.h,),
                      SizedBox(
                        width: 180.w,
                        child:            Row(
                          children: [
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: AppColors.yellow,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Text(
                              Apptexts.fats,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              Apptexts. left2,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text(
                              Apptexts.gvalue2,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
          
                      ),
                      SizedBox(height: 11.h,),
                      Container(
                        width: 173.w,
                        height: 0.h,
                        decoration: BoxDecoration(),
                        child: BarProgress(
                          percentage: 35.0,
                          backColor: AppColors.backcolors,
                          gradient: LinearGradient(colors: [
                            AppColors.yellow,
                            AppColors.yellow
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
                      SizedBox(height: 15.h,),
                      SizedBox(
                        width: 180.w,
                        child:            Row(
                          children: [
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: AppColors.Profilecircle,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Text(
                              Apptexts.carb,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              Apptexts. left3,
                              style: TextStyle(
                                fontSize: 10.1.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.Loginendm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 15.w,),
                            Text(
                              Apptexts.gvalue3,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
          
                      ),
                      SizedBox(height: 11.h,),
                      Container(
                        width: 173.w,
                        height: 0.h,
                        decoration: BoxDecoration(),
                        child: BarProgress(
                          percentage: 35.0,
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
               SizedBox(width: 23.w,),

                  Stack(
                    children: [
                      Container(
                        height: 120.h,
                        width: 111.w,
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
                              radius: '122%',
                              innerRadius: '89%',
                              name: 'Gold',
                              cornerStyle: CornerStyle.bothFlat,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 41,
                        top: 45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Apptexts.recipepage ,
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                fontWeight: FontWeight.w700,
                                color:AppColors.blackTextColor,
                              ),
                            ),
                            Text(
                              Apptexts. Calorie,
                              style: TextStyle(
                                fontSize: 7.9.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                fontWeight: FontWeight.w500,
                                color: AppColors.dblack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(
                    width: 270.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(() {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.selectText(0);
                                },
                                child: Container(
                                  height:26.h,
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndex.value == 0
                                        ? AppColors.Profilecircle
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.w),
                                  ),
                                  child: Text(
                                    Apptexts.ketodiets,
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 0
                                          ? Colors.white
                                          : AppColors.Profilecircle,
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.selectText(1);
                                },
                                child:Container(
                                  height:26.h,
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndex.value == 1
                                        ? AppColors.Profilecircle
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.w),
                                  ),
                                  child: Text(
                                    Apptexts.dietsmeditation,
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 1
                                          ? Colors.white
                                          : AppColors.Profilecircle,
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w700,
          
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.selectText(2);
                                },
                                child: Container(
                                  height:26.h,
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndex.value == 2
                                        ? AppColors.Profilecircle
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.w),
                                  ),
                                  child: Text(
                                    Apptexts.atkins,
                                    style: TextStyle(
                                      color: controller.selectedIndex.value == 2
                                          ? Colors.white
                                          :  AppColors.Profilecircle,
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(SeeallView(),binding:SeeAllBinding(),);
                    },
                    child: Container(
                      height: 18.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellow,width: 1.w)
                      ),
                      child:  Center(
                        child: Text(
                          Apptexts.seeall,
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            fontWeight: FontWeight.w700,
                            color: AppColors.yellow,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
          SizedBox(height:15.h,),
              Center(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 320.h,
                    width: 325.w,
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4, // Number of icons
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 5 icons in each row
                        mainAxisSpacing: 17.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 0.85,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.whiteTextColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:EdgeInsets.symmetric(horizontal: 12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.h,),
                                  Container(
                                    height: 112.h,
                                    width:125.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                      image: DecorationImage(
                                        image: AssetImage('assets/images/gridviewe.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 6.h,),
                                          GestureDetector(
                                            onTap: () {
                                              controller.toggleFavorite(index); // Call the toggle function with the index
                                            },
                                            child: Container(
                                              height: 26.h,
                                              width: 27.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteTextColor,
                                                borderRadius: BorderRadius.circular(7),
                                              ),
                                              child: Obx(() =>  Center(
                                                child: SvgPicture.asset(
                                                  controller.favorites[index]?
                                                  Appasset.redfavorite :   Appasset.favoritesvg,
                                                  height: 15.h,

                                                ),
                                              )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      Text(
                                        Apptexts.plan2,
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: ApptextStyle.fontfamily,
                                          color: AppColors.blackTextColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 18.h,
                                        width: 55.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.Profilecircle,
                                          borderRadius: BorderRadius.circular(9),
                                        ),
                                        child: Center(
                                          child: Text(
                                            Apptexts.days27,
                                            style: TextStyle(
                                              fontSize: 9.sp,
                                              fontFamily: ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );// Replace with your desired icons
                      },
                      // Make the grid non-scrollable
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }

}