import 'package:diet_app/module/homepage_module/myrecipe/controller/myrecipe_controller.dart';
import 'package:diet_app/module/homepage_module/recipe/binding/recipe_binding.dart';
import 'package:diet_app/module/homepage_module/recipe/view/recipe_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../profile_module/profile/binding/profile_binding.dart';
import '../../../profile_module/profile/view/profile_view.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class MyrecipeView extends GetView<MyrecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          children: [
            SizedBox(height: 47.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(BottomNavBarScreen(), binding:  BottomNavBarBinding());
                  },
                  child: SvgPicture.asset(Appasset.Arrowdiet, height: 17.h),
                ),
                Text(
                  Apptexts.myrecipes,
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
            SizedBox(height: 6.h),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h), // Add margin to create space between items
                    height: 76.h, // Adjusted height for visibility
                    width: 328.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: AssetImage('assets/images/myrecipe.png'),
                        fit: BoxFit.fill,
                      ),

                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h,),
                          Text(
                            Apptexts.myrecipe1,
                            style: TextStyle(
                              fontSize: 21.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                Apptexts.myrecipes2,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.whiteTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 145.w,),
                              Text(
                                Apptexts.myrecipes3 ,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.whiteTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
