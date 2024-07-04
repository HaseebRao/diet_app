import 'package:carousel_slider/carousel_slider.dart';
import 'package:diet_app/module/homepage_module/notifications/binding/notifications_binding.dart';
import 'package:diet_app/module/homepage_module/notifications/view/notifications_view.dart';
import 'package:diet_app/module/homepage_module/runningpagestart/binding/runningpagestart_binding.dart';
import 'package:diet_app/module/homepage_module/runningpagestart/view/runningpagestart_view.dart';
import 'package:diet_app/module/homepage_module/waterintake/view/waterintake_view.dart';
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
import '../../waterintake/binding/wateintake_binding.dart';
import '../controller/homepage_controller.dart';
import '../dialogueboex/dialogue_boes.dart';

class HomepageView extends GetView<HomepageController> {
  final HomepageController controller = Get.put(HomepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteTextColor,
        body: Obx(() => Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 46.h,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.dialog(
                                        DialogueBoes(),
                                      );
                                    },
                                    child: SvgPicture.asset(
                                      Appasset.homeicon,
                                      height: 14.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 28.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  GestureDetector(
                                    onTap: () {
                                      Get.off(NotificationsView(),
                                          binding: NotificationsBinding());
                                    },
                                    child: SvgPicture.asset(
                                      Appasset.notification,
                                      height: 15.h,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              SizedBox(
                                height: 66.h,
                                child: SemicircularIndicator(
                                  backgroundColor:
                                      AppColors.wellcome.withOpacity(0.7),
                                  radius: 85,
                                  strokeWidth: 16,
                                  progress: 0.60,
                                  color: AppColors.yellow,
                                  bottomPadding: 0,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 45.w, top: 20.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '1120',
                                                style: TextStyle(
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: AppColors
                                                        .Profilecircle),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Text(
                                                'kcal',
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .blackTextColor),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'From 2500kcal',
                                            style: TextStyle(
                                                fontSize: 10.sp,
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
                              Container(
                                height: 100.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x23000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.whiteTextColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0.w, top: 16.h, right: 15.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            backgroundColor: AppColors.wellcome
                                                .withOpacity(0.8),
                                            radius: 26.0.h,
                                            lineWidth: 4.2.h,
                                            percent: 0.70,
                                            center: Text(
                                              "90kcal",
                                              style: TextStyle(
                                                fontSize: 9.sp,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
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
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.blackTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            backgroundColor: AppColors.wellcome
                                                .withOpacity(0.8),
                                            radius: 26.0.h,
                                            lineWidth: 4.2.h,
                                            percent: 0.70,
                                            center: Text(
                                              "130g",
                                              style: TextStyle(
                                                fontSize: 9.sp,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
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
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.blackTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            backgroundColor: AppColors.wellcome
                                                .withOpacity(0.8),
                                            radius: 26.0.h,
                                            lineWidth: 4.2.h,
                                            percent: 0.70,
                                            center: Text(
                                              "130g",
                                              style: TextStyle(
                                                fontSize: 9.sp,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
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
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.blackTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircularPercentIndicator(
                                            backgroundColor: AppColors.wellcome
                                                .withOpacity(0.8),
                                            radius: 26.0.h,
                                            lineWidth: 4.2.h,
                                            percent: 0.70,
                                            center: Text(
                                              "130g",
                                              style: TextStyle(
                                                fontSize: 9.sp,
                                                fontFamily:
                                                    ApptextStyle.fontfamily,
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
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
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
                                height: 25.h,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  Apptexts.diet,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 56.h,
                                    width: 290.w,
                                    child: CarouselSlider.builder(
                                      options: CarouselOptions(
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
                                              width: 300.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.Profilecircle,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 7.w,
                                                  ),
                                                  SvgPicture.asset(
                                                    controller
                                                        .text[index].svgImage,
                                                    height: 16.h,
                                                  ),
                                                  SizedBox(
                                                    width: 6.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        controller
                                                            .text[index].texts,
                                                        style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontFamily:
                                                              ApptextStyle
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
                                                          fontFamily:
                                                              ApptextStyle
                                                                  .fontfamily,
                                                          color: AppColors
                                                              .whiteTextColor,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  Image.asset(
                                                    height: 35.h,
                                                    width: 35.w,
                                                    controller
                                                        .text[index].pngImage,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Container(
                                                      height: 29.h,
                                                      width: 30.w,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
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
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
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
                                height: 29.h,
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
                                      height: 150.h,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              height: 45.h,
                                              width: 107.w,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 7.h,
                                                  ),
                                                  Container(
                                                    height: 70.h,
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
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 9.h,
                                                  ),
                                                  Text(
                                                    Apptexts.breakfastlist,
                                                    style: TextStyle(
                                                      fontSize: 10.5.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .blackTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    Apptexts.calories,
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors.texts,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    )
                                  : SizedBox(
                                      height: 10.h,
                                    ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 54.h,
                                  width: 290.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.Profilecircle,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            Appasset.glass,
                                            height: 18.h,
                                          ),
                                          SizedBox(
                                            height: 8.h,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            Apptexts.Snacks,
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            Apptexts.carbs,
                                            style: TextStyle(
                                              fontSize: 8.3.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Image.asset(
                                        "assets/images/png.png",
                                        height: 35.h,
                                        width: 35.w,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Container(
                                          height: 29.h,
                                          width: 31.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                height: 29.h,
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
                                      height: 170.h,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Container(
                                              height: 79.h,
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
                                                    height: 70.h,
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
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 9.h,
                                                  ),
                                                  Text(
                                                    Apptexts.breakfastlist,
                                                    style: TextStyle(
                                                      fontSize: 10.5.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .blackTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    Apptexts.calories,
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors.texts,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15.h,
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    )
                                  : SizedBox(
                                      height: 12.h,
                                    ),
                              Container(
                                  height: 52.h,
                                  width: 320.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 45.h,
                                        width: 47.w,
                                        decoration: BoxDecoration(
                                          color: AppColors.backcolors
                                              .withOpacity(0.7),
                                          shape: BoxShape.circle,
                                        ),
                                        child: SvgPicture.asset(
                                          Appasset.indicatr,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 245.w,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Apptexts.simple,
                                                  style: TextStyle(
                                                    fontSize: 11.sp,
                                                    fontFamily:
                                                        ApptextStyle.fontfamily,
                                                    color: AppColors
                                                        .blackTextColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Spacer(),
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
                                          ),
                                          SizedBox(
                                            height: 9.h,
                                          ),
                                          Container(
                                            width: 243.w,
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
                                    ],
                                  )),
                              SizedBox(
                                height: 24.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(RunningpagestartView(),
                                      binding: RunningpagestartBinding());
                                },
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
                                        offset: Offset(0,
                                            3), // Offset in the x and y direction
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 18.w),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 9.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6.w,
                                                  vertical: 6.h),
                                              height: 38.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.backcolors
                                                    .withOpacity(0.7),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                Appasset.man,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 9.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Apptexts.daily,
                                                  style: TextStyle(
                                                    fontSize: 11.3.sp,
                                                    fontFamily:
                                                        ApptextStyle.fontfamily,
                                                    color: AppColors
                                                        .blackTextColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 1.8,
                                                ),
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
                                            Spacer(),
                                            Container(
                                                height: 24.h,
                                                width: 27.w,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.Profilecircle,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3)),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 14,
                                                  color:
                                                      AppColors.whiteTextColor,
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Container(
                                          height: 0.5.h,
                                          color:
                                              AppColors.dblack.withOpacity(0.4),
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        Container(
                                          width: 305.w,
                                          height: 10.h,
                                          decoration: BoxDecoration(),
                                          child: BarProgress(
                                            showPercentage: false,
                                            percentage: 25.0,
                                            backColor: AppColors.backcolors,
                                            gradient: LinearGradient(colors: [
                                              AppColors.Profilecircle,
                                              AppColors.Profilecircle
                                            ]),
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
                                                color: AppColors.blackTextColor,
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
                                                color: AppColors.blackTextColor,
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
                              SizedBox(
                                height: 25.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(WaterintakeView(),
                                      binding: WateintakeBinding());
                                },
                                child: Container(
                                  height: 152.h,
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
                                        offset: Offset(0,
                                            3), // Offset in the x and y direction
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 18.w),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 13.h,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 38.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.backcolors
                                                    .withOpacity(0.7),
                                                shape: BoxShape.circle,
                                              ),
                                              child: SvgPicture.asset(
                                                Appasset.drops,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      Apptexts.Water,
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontFamily: ApptextStyle
                                                            .fontfamily,
                                                        color: AppColors
                                                            .blackTextColor,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 3.w,
                                                    ),
                                                    Text(
                                                      Apptexts.numbrs,
                                                      style: TextStyle(
                                                        fontSize: 9.sp,
                                                        fontFamily: ApptextStyle
                                                            .fontfamily,
                                                        color: AppColors.dblack,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Text(
                                                  Apptexts.Break,
                                                  style: TextStyle(
                                                    fontSize: 9.3.sp,
                                                    fontFamily:
                                                        ApptextStyle.fontfamily,
                                                    color: AppColors.dblack,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                                height: 24.h,
                                                width: 27.w,
                                                decoration: BoxDecoration(
                                                    color:
                                                        AppColors.Profilecircle,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3)),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color:
                                                      AppColors.whiteTextColor,
                                                  size: 14,
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          height: 9.h,
                                        ),
                                        Container(
                                          height: 0.3.h,
                                          width: 280.w,
                                          decoration: BoxDecoration(
                                            color: AppColors.dblack,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Center(
                                          child: SizedBox(
                                            height: 75.h,
                                            width: 255.w,
                                            child: GridView.builder(
                                              padding: EdgeInsets.all(0),
                                              itemCount: 10, // Number of icons
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio: 1.8,
                                                crossAxisCount: 5,
                                                mainAxisSpacing: 20.0,
                                                crossAxisSpacing: 5.0,
                                              ),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SvgPicture.asset(
                                                  Appasset.glasss,
                                                );
                                              },
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
            )));
  }
}
