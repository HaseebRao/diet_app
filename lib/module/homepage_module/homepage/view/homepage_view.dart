import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    // Ensure that the HomepageController is initialized
    final HomepageController controller = Get.put(HomepageController());

    return Scaffold(
        body: Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 47.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Appasset.homeicon,
                          height: 14.h,
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Apptexts.hometext,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              Apptexts.homepage,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          Appasset.notification,
                          height: 13.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 70.h,
                        child: SemicircularIndicator(
                          radius: 85,
                          strokeWidth: 16,
                          progress: 0.60,
                          color: AppColors.yellow,
                          bottomPadding: 0,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 40.w, top: 25.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '1120',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.Profilecircle),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        'kcal',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.blackTextColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'From 2500kcal',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.blackTextColor
                                            .withOpacity(0.5)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 100.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.Profilecircle, width: 0.5.w),
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.whiteTextColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.0.w, top: 16.h, right: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 26.0.h,
                                  lineWidth: 4.2.h,
                                  percent: 0.70,
                                  center: Text(
                                    "90kcal",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: AppColors.purplees,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  progressColor: AppColors.purplees,
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  Apptexts.goal,
                                  style: TextStyle(
                                    fontSize: 9.5.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 26.0.h,
                                  lineWidth: 4.2.h,
                                  percent: 0.70,
                                  center: Text(
                                    "130g",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  progressColor: AppColors.blue,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  Apptexts.protein,
                                  style: TextStyle(
                                    fontSize: 9.5.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 26.0.h,
                                  lineWidth: 4.2.h,
                                  percent: 0.70,
                                  center: Text(
                                    "130g",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  progressColor: AppColors.yellow,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  Apptexts.fat,
                                  style: TextStyle(
                                    fontSize: 9.5.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 26.0.h,
                                  lineWidth: 4.2.h,
                                  percent: 0.70,
                                  center: Text(
                                    "130g",
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  progressColor: Colors.green,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  Apptexts.carb,
                                  style: TextStyle(
                                    fontSize: 9.5.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Apptexts.diet,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 56.h,
                              width: 300.w,
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  // Disable infinite scrolling
                                  // Disable auto-play
                                  viewportFraction: 1,
                                  onPageChanged: controller.onPageChanged,
                                ),
                                itemCount: controller.imageUrls.length,
                                // Set the number of items
                                itemBuilder: (context, index, realIndex) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 47.h,
                                        width: 305.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.Profilecircle,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.w),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.h),
                                                child: SvgPicture.asset(
                                                  controller
                                                      .text[index].svgImage,
                                                  height: 16.h,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6.w,
                                              ),
                                              Center(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .text[index].texts,
                                                      style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontFamily: ApptextStyle
                                                            .fontfamily,
                                                        color: AppColors
                                                            .whiteTextColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      controller.text[index]
                                                          .differentTexts,
                                                      style: TextStyle(
                                                        fontSize: 8.3.sp,
                                                        fontFamily: ApptextStyle
                                                            .fontfamily,
                                                        color: AppColors
                                                            .whiteTextColor,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Container(
                                                height: 40.h,
                                                width: 40.w,
                                                child: Image.asset(
                                                  controller
                                                      .text[index].pngImage,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Container(
                                                  height: 32.h,
                                                  width: 34.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: AppColors
                                                        .whiteTextColor
                                                        .withOpacity(0.30),
                                                  ),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: AppColors
                                                        .whiteTextColor,
                                                    size: 24,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 11.5,
                            ),
                            Obx(
                              () {
                                return DotsIndicator(
                                  axis: Axis.vertical,
                                  dotsCount: controller.imageUrls.length,
                                  position: controller.currentIndex
                                      .toDouble()
                                      .toInt(),
                                  decorator: DotsDecorator(
                                    color: AppColors.Profilecircles,
                                    // Set the color of inactive dots
                                    activeColor: AppColors.Profilecircle,
                                    // Set// the color of active dot
                                    spacing: EdgeInsets.all(3),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Text(
                              Apptexts.suggest,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.isDropdownOpen.value =
                                    !controller.isDropdownOpen.value;
                              },
                              child: Icon(
                                controller.isDropdownOpen.value
                                    ? Icons.arrow_drop_down_outlined
                                    : Icons.arrow_drop_up_outlined,
                                color: AppColors.blackTextColor,
                                size: 22.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        controller.isDropdownOpen.value
                            ? SizedBox(
                                height: 140.h,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(right: 5.w),
                                        child: Container(
                                          height: 45.h,
                                          width: 107.w,
                                          decoration: BoxDecoration(
                                              // border: Border.all(color: AppColors.account)
                                              ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 7.h,
                                              ),
                                              Container(
                                                height: 65.h,
                                                width: 75.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/img.png'),
                                                      fit: BoxFit.fill,
                                                    ),
                                                    color: AppColors.account),
                                              ),
                                              SizedBox(
                                                height: 9.h,
                                              ),
                                              Text(
                                                Apptexts.breakfastlist,
                                                style: TextStyle(
                                                  fontSize: 10.5.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color:
                                                      AppColors.blackTextColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                Apptexts.calories,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color: AppColors.texts,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : SizedBox(
                                height: 10.h,
                              ),
                        Container(
                          height: 54.h,
                          width: 305.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.Profilecircle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 11.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: SvgPicture.asset(
                                    Appasset.glass,
                                    height: 17.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Apptexts.Snacks,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.whiteTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      Apptexts.carbs,
                                      style: TextStyle(
                                        fontSize: 8.3.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.whiteTextColor,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/png.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Container(
                                    height: 32.h,
                                    width: 34.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.whiteTextColor
                                          .withOpacity(0.30),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.whiteTextColor,
                                      size: 20,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18.h,
                        ),
                        Row(
                          children: [
                            Text(
                              Apptexts.Snack,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: AppColors.blackTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.issDropdownOpen.value =
                                    !controller.issDropdownOpen.value;
                              },
                              child: Icon(
                                controller.issDropdownOpen.value
                                    ? Icons.arrow_drop_down_outlined
                                    : Icons.arrow_drop_up_outlined,
                                color: AppColors.blackTextColor,
                                size: 22.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        controller.issDropdownOpen.value
                            ? SizedBox(
                                height: 140.h,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(right: 5.w),
                                        child: Container(
                                          height: 45.h,
                                          width: 107.w,
                                          decoration: BoxDecoration(
                                              // border: Border.all(color: AppColors.account)
                                              ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 7.h,
                                              ),
                                              Container(
                                                height: 65.h,
                                                width: 75.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/img.png'),
                                                      fit: BoxFit.fill,
                                                    ),
                                                    color: AppColors.account),
                                              ),
                                              SizedBox(
                                                height: 9.h,
                                              ),
                                              Text(
                                                Apptexts.breakfastlist,
                                                style: TextStyle(
                                                  fontSize: 10.5.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color:
                                                      AppColors.blackTextColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                Apptexts.calories,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color: AppColors.texts,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            : SizedBox(
                                height: 12.h,
                              ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 52.h,
                                width: 305.w,
                                decoration: BoxDecoration(
                                  // color: AppColors.wellcome,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 45.h,
                                      width: 47.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.backcolors.withOpacity(0.7),
                                          borderRadius: BorderRadius.circular(100)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: SvgPicture.asset(
                                          Appasset.indicatr,
                                          height: 13.h,
                                        ),
                                      ),
                                    ),
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
                                                    Apptexts.simple,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily:
                                                      ApptextStyle.fontfamily,
                                                      color:
                                                      AppColors.blackTextColor,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 130.w,
                                              ),
                                              Text(
                                                Apptexts.Redeem,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontFamily:
                                                  ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w500,
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
                                                AppColors.yellow,
                                                AppColors.yellow
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
                                )),
                            SizedBox(height: 20.h,),
                            Center(
                              child: Container(
                                height: 97.h,
                                width: 315.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteTextColor,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          0, 3), // Offset in the x and y direction
                                    ),
                                  ],
                                ),

                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 12.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 9.h,),
                                      Row(
                                        children: [
                                          Container(
                                            height: 38.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                                color: AppColors.backcolors.withOpacity(0.7),
                                                borderRadius: BorderRadius.circular(100)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: SvgPicture.asset(
                                                Appasset.man,
                                                height: 13.h,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 9.w,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Apptexts.daily,
                                                style: TextStyle(
                                                  fontSize: 11.3.sp,
                                                  fontFamily:
                                                  ApptextStyle.fontfamily,
                                                  color:
                                                  AppColors.blackTextColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(height: 1.8,),
                                              Text(
                                                Apptexts.calorieses,
                                                style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily:
                                                  ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 40.w,),
                                          Container(
                                            height: 24.h,
                                            width: 27.w,
                                            decoration: BoxDecoration(
                                                color: AppColors.Profilecircle,
                                                borderRadius: BorderRadius.circular(3)
                                            ),
                                            child:Padding(
                                              padding: const EdgeInsets.all(9.0),
                                              child: SvgPicture.asset(
                                                Appasset.arrow,
                                                height: 6.h,
                                              ),
                                            ),

                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6.h,),
                                      Container(
                                        height: 0.5.h,
                                        width: 305.w,
                                        color: AppColors.dblack.withOpacity(0.4),
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Container(
                                        width: 305.w,
                                        height: 10.h,
                                        decoration: BoxDecoration(),
                                        child: BarProgress(
                                          percentage: 25.0,
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
                                      Row(
                                        children: [
                                          Text(
                                            Apptexts.step,
                                            style: TextStyle(
                                              fontSize: 8.8.sp,
                                              fontFamily:
                                              ApptextStyle.fontfamily,
                                              color:
                                              AppColors.blackTextColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            Apptexts.number,
                                            style: TextStyle(
                                              fontSize: 8.8.sp,
                                              fontFamily:
                                              ApptextStyle.fontfamily,
                                              color:
                                              AppColors.blackTextColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 25.h,),

                            Center(
                              child: Container(height: 148.h,
                                width: 315.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteTextColor,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.3), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(
                                          0, 3), // Offset in the x and y direction
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 13.h,),
                                      Row(
                                        children: [
                                          Container(
                                            height: 38.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                                color: AppColors.backcolors.withOpacity(0.7),
                                                borderRadius: BorderRadius.circular(100)),
                                            child: Padding(
                                              padding: const EdgeInsets.all(11.0),
                                              child: SvgPicture.asset(
                                                Appasset.drops,
                                                height: 13.h,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10.w,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    Apptexts.Water,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily:
                                                      ApptextStyle.fontfamily,
                                                      color:
                                                      AppColors.blackTextColor,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(width: 3.w,),
                                                  Text(
                                                    Apptexts.numbrs,
                                                    style: TextStyle(
                                                      fontSize: 9.sp,
                                                      fontFamily:
                                                      ApptextStyle.fontfamily,
                                                      color: AppColors.dblack,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 1.8,),
                                              Text(
                                                Apptexts.Break,
                                                style: TextStyle(
                                                  fontSize:9.3.sp,
                                                  fontFamily:
                                                  ApptextStyle.fontfamily,
                                                  color: AppColors.dblack,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 45,),
                                          Container(
                                            height: 24.h,
                                            width: 27.w,
                                            decoration: BoxDecoration(
                                                color: AppColors.Profilecircle,
                                                borderRadius: BorderRadius.circular(3)
                                            ),
                                            child:Padding(
                                              padding: const EdgeInsets.all(9.0),
                                              child: SvgPicture.asset(
                                                Appasset.arrow,
                                                height: 6.h,
                                              ),
                                            ),

                                          )
                                        ],
                                      ),
                                      SizedBox(height: 9.h,),
                                      Container(
                                        height: 0.3.h,
                                        width: 280.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.dblack,
                                        ),
                                      ),
                                      SizedBox(height: 5.h,),
                                      Center(
                                        child: SizedBox(
                                          height: 70.h,
                                          width: 255.w,
                                          child: GridView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 10, // Number of icons
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2, // 5 icons in each row
                                              mainAxisSpacing: 25.0,
                                              crossAxisSpacing: 5.0,
                                            ),
                                            itemBuilder: (BuildContext context, int index) {
                                              return Padding(
                                                padding: const EdgeInsets.all(6.0),
                                                child: SvgPicture.asset(
                                                  Appasset.glasss,
                                                  height: 10.h,
                                                ),
                                              );// Replace with your desired icons
                                            },
                                            physics: NeverScrollableScrollPhysics(), // Make the grid non-scrollable
                                          ),
                                        ),
                                      ),
                            ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        SizedBox(
                          height: 70.h,
                        ),
                      ],
                    ),
                  ]),
            ))));
  }
}
