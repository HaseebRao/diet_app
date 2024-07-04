import 'package:diet_app/module/homepage_module/Favoritesrecipe/controller/favoritesrecipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class FavoritesrecipeView extends GetView<FavoritesrecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Get.back(),
              icon: SvgPicture.asset(
                Appasset.Arrowdiet,
                height: 15.8.h,
                color: AppColors.blackTextColor,
              ),
            ),
            Text(
              Apptexts.favorite,
              style: TextStyle(
                fontSize: 21.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.blackTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 1.h,
              width: 30.w,
            ),
          ],
        ),
        bottom: TabBar(
          controller: controller.tabController,
          tabs: const [
            Tab(text: "Recipe"),
            Tab(text: "Diet"),
            Tab(text: "My recipe"),
          ],
          dividerColor: AppColors.whiteTextColor,
          labelColor: AppColors.blackTextColor,
          indicatorColor: AppColors.Profilecircle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  Center(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 32.h,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.blackTextColor,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  18.0), // Circular border
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Appasset.lines, height: 18.h),
                          SizedBox(
                            width: 12.w,
                          ),
                          Obx(() {
                            return SizedBox(
                              width: 130.w,
                              height: 45.h,
                              child: DropdownButtonFormField<String>(
                                borderRadius: BorderRadius.circular(10),
                                iconEnabledColor: AppColors.Profilecircles,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dropdownColor: AppColors.whiteTextColor,
                                value: controller.selectedTimer.value,
                                items: controller.months
                                    .map<DropdownMenuItem<String>>(
                                      (String timer) =>
                                          DropdownMenuItem<String>(
                                        alignment: Alignment.center,
                                        value: timer,
                                        child: Text(
                                          timer,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.blackTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (String? newValue) {
                                  controller.selectTime(newValue!);
                                },
                              ),
                            );
                          }),
                          Spacer(),
                          Text(
                            Apptexts.clearall,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        height: 450.h,
                        width: 325.w,
                        child: GridView.builder(
                          padding: EdgeInsets.all(0),
                          scrollDirection: Axis.vertical,
                          itemCount: 4, // Number of icons
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // 5 icons in each row
                            mainAxisSpacing: 17.0,
                            crossAxisSpacing: 6.0,
                            childAspectRatio: 0.78,
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
                                  padding: EdgeInsets.only(left: 13.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        height: 94.h,
                                        width: 120.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/gridviewe.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 6.h,
                                              ),
                                              Container(
                                                height: 26.h,
                                                width: 27.w,
                                                decoration: BoxDecoration(
                                                  color:
                                                      AppColors.whiteTextColor,
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                ),
                                                child: Icon(
                                                  Icons.favorite,
                                                  size: 23,
                                                  color: AppColors.account,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        Apptexts.spicy,
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontFamily: ApptextStyle.fontfamily,
                                          color: AppColors.blackTextColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        Apptexts.serving,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          fontFamily: ApptextStyle.fontfamily,
                                          color: AppColors.dblack,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Container(
                                            height: 18.h,
                                            width: 55.w,
                                            decoration: BoxDecoration(
                                              color: AppColors.Profilecircle,
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            child: Center(
                                              child: Text(
                                                Apptexts.keto,
                                                style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color:
                                                      AppColors.whiteTextColor,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25.w,
                                          ),
                                          SvgPicture.asset(
                                            Appasset.fire,
                                            height: 12.h,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            Apptexts.kcl,
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
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ); // Replace with your desired icons
                          },
                          // Make the grid non-scrollable
                        ),
                      ),
                    ],
                  )),
                  Center(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 32.h,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.blackTextColor,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  18.0), // Circular border
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Appasset.lines, height: 18.h),
                          SizedBox(
                            width: 10.w,
                          ),
                          Obx(() {
                            return SizedBox(
                              width: 130.w,
                              height: 45.h,
                              child: DropdownButtonFormField<String>(
                                borderRadius: BorderRadius.circular(10),
                                iconEnabledColor: AppColors.Profilecircles,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dropdownColor: AppColors.whiteTextColor,
                                value: controller.selectedTimers.value,
                                items: controller.months
                                    .map<DropdownMenuItem<String>>(
                                      (String timer) =>
                                          DropdownMenuItem<String>(
                                        alignment: Alignment.center,
                                        value: timer,
                                        child: Text(
                                          timer,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.blackTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (String? newValue) {
                                  controller.selectTimee(newValue!);
                                },
                              ),
                            );
                          }),
                          Spacer(),
                          Text(
                            Apptexts.clearall,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: 450.h,
                            width: 325.w,
                            child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 4, // Number of icons
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Container(
                                            height: 100.h,
                                            width: 120.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/gridviewe.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  SizedBox(
                                                    height: 6.h,
                                                  ),
                                                  Container(
                                                    height: 26.h,
                                                    width: 27.w,
                                                    decoration: BoxDecoration(
                                                      color: AppColors
                                                          .whiteTextColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                    ),
                                                    child: Icon(
                                                      Icons.favorite,
                                                      size: 23,
                                                      color: AppColors.account,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            children: [
                                              Text(
                                                Apptexts.plan2,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontFamily:
                                                      ApptextStyle.fontfamily,
                                                  color:
                                                      AppColors.blackTextColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                height: 18.h,
                                                width: 55.w,
                                                decoration: BoxDecoration(
                                                  color:
                                                      AppColors.Profilecircle,
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    Apptexts.days27,
                                                    style: TextStyle(
                                                      fontSize: 9.sp,
                                                      fontFamily: ApptextStyle
                                                          .fontfamily,
                                                      color: AppColors
                                                          .whiteTextColor,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ); // Replace with your desired icons
                              },
                              // Make the grid non-scrollable
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Center(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 32.h,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.blackTextColor,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  18.0), // Circular border
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Appasset.lines, height: 18.h),
                          SizedBox(
                            width: 10.w,
                          ),
                          Obx(() {
                            return SizedBox(
                              width: 130.w,
                              height: 45.h,
                              child: DropdownButtonFormField<String>(
                                borderRadius: BorderRadius.circular(10),
                                iconEnabledColor: AppColors.Profilecircles,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dropdownColor: AppColors.whiteTextColor,
                                value: controller.selectedTimeres.value,
                                items: controller.months
                                    .map<DropdownMenuItem<String>>(
                                      (String timer) =>
                                          DropdownMenuItem<String>(
                                        alignment: Alignment.center,
                                        value: timer,
                                        child: Text(
                                          timer,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: AppColors.blackTextColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (String? newValue) {
                                  controller.selectTimes(newValue!);
                                },
                              ),
                            );
                          }),
                          Spacer(),
                          Text(
                            Apptexts.clearall,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 20.h),
                              child: Container(
                                height: 76.h, // Adjusted height for visibility
                                width: 328.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/myrecipe.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.w, right: 10.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            Apptexts.myrecipe1,
                                            style: TextStyle(
                                              fontSize: 21.4.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 22.h),
                                            child: Container(
                                              height: 23.h,
                                              width: 24.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteTextColor,
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: Center(
                                                  child: Icon(
                                                Icons.favorite,
                                                color: AppColors.account,
                                              )),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            Apptexts.myrecipes2,
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            Apptexts.myrecipes3,
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily:
                                                  ApptextStyle.fontfamily,
                                              color: AppColors.whiteTextColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
