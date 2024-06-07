import 'package:diet_app/module/homepage_module/viewpaln/controller/viewplan_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class ViewplanView extends GetView<ViewplanController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45.h,
              ),
              Row(
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
                    Apptexts.dietpage,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      Apptexts.dayes,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    SizedBox(
                      child: Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.selectText(0);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 0
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text1,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 0
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(1);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 1
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text2,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 1
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(2);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 2
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text3,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 2
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(3);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 3
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text4,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 3
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(4);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 4
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text5,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 4
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(5);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 5
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text6,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 5
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectText(7);
                              },
                              child: Container(
                                height: 44.h,
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex.value == 7
                                      ? AppColors.Profilecircle
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4.w),
                                ),
                                child: Text(
                                  Apptexts.text7,
                                  style: TextStyle(
                                    color: controller.selectedIndex.value == 7
                                        ? Colors.white
                                        : AppColors.Profilecircle,
                                    fontSize: 19.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Container(
                      height: 0.2.h,
                      width: 360.w,
                      color: AppColors.Loginendm,
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                Appasset.plansvg,
                                height: 26.h,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                Apptexts.breakfast,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                                padding: EdgeInsets.all(0),
                                itemCount: 2,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15.h),
                                        child: Container(
                                          height: 75.h,
                                          width: 253.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: AppColors.bordercolor)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 75.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: AppColors.bordercolor),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/img.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 17.w,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              Apptexts.food2,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontFamily: ApptextStyle.fontfamily,
                                                color: AppColors.blackTextColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 4.h,),
                                            Text(
                                              Apptexts.recommended,
                                              style: TextStyle(
                                                fontSize:8.sp,
                                                fontFamily: ApptextStyle.fontfamily,
                                                color: AppColors.blackTextColor.withOpacity(0.4),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 13.h),
                                        child: Container(
                                          height: 46.h,
                                          width: 46.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.Profilecircle,
                                              borderRadius:
                                                  BorderRadius.circular(13)),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.whiteTextColor,
                                            size: 25.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ),
                          SizedBox(height: 5.w,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Appasset. lunchyellow,
                                height: 26.h,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                Apptexts.lunch,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.all(0),
                                itemCount: 2,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15.h),
                                        child: Container(
                                          height: 75.h,
                                          width: 253.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: AppColors.bordercolor)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 75.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: AppColors.bordercolor),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/img.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 17.w,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    Apptexts.food2,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4.h,),
                                                  Text(
                                                    Apptexts.recommended,
                                                    style: TextStyle(
                                                      fontSize:8.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor.withOpacity(0.4),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 13.h),
                                        child: Container(
                                          height: 46.h,
                                          width: 46.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.Profilecircle,
                                              borderRadius:
                                              BorderRadius.circular(13)),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.whiteTextColor,
                                            size: 25.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ),
                          SizedBox(height: 5.w,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Appasset.snack,
                                height: 26.h,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                Apptexts.Snaks,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.all(0),
                                itemCount: 2,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15.h),
                                        child: Container(
                                          height: 75.h,
                                          width: 253.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: AppColors.bordercolor)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 75.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: AppColors.bordercolor),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/img.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 17.w,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    Apptexts.food2,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4.h,),
                                                  Text(
                                                    Apptexts.recommended,
                                                    style: TextStyle(
                                                      fontSize:8.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor.withOpacity(0.4),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 13.h),
                                        child: Container(
                                          height: 46.h,
                                          width: 46.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.Profilecircle,
                                              borderRadius:
                                              BorderRadius.circular(13)),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.whiteTextColor,
                                            size: 25.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          ),
                          SizedBox(height: 5.w,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                Appasset.dinners,
                                height: 26.h,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                Apptexts.dinner,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.blackTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 180.h,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.all(0),
                                itemCount: 2,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Row(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 15.h),
                                        child: Container(
                                          height: 75.h,
                                          width: 253.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: AppColors.bordercolor)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 75.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: AppColors.bordercolor),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/img.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 17.w,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    Apptexts.food2,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4.h,),
                                                  Text(
                                                    Apptexts.recommended,
                                                    style: TextStyle(
                                                      fontSize:8.sp,
                                                      fontFamily: ApptextStyle.fontfamily,
                                                      color: AppColors.blackTextColor.withOpacity(0.4),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 13.h),
                                        child: Container(
                                          height: 46.h,
                                          width: 46.w,
                                          decoration: BoxDecoration(
                                              color: AppColors.Profilecircle,
                                              borderRadius:
                                              BorderRadius.circular(13)),
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.whiteTextColor,
                                            size: 25.h,
                                          ),
                                        ),
                                      )
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                    )
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
