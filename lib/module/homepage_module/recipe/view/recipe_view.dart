import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/recipe_controller.dart';

class RecipeView extends GetView<RecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w), // Use ScreenUtil for responsive padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 45.h),
            Center(
              child: Text(
                Apptexts.rrecipe,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 39.h,
              width: 330.w,
              child: TextFormField(
                onChanged: (text) => controller.updateSearchText(text),
                style: TextStyle(
                  color: AppColors.blackTextColor, // Set text color
                ),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      Appasset.search,
                      height: 2.h,
                    ),
                  ),
                  hintText: 'Search here',
                  hintStyle: TextStyle(
                    color: AppColors.dblack,
                    fontSize: 11.5.h,
                    fontFamily: ApptextStyle.fontfamily,
                    fontWeight: FontWeight.w400, // Set hint text color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.dblack.withOpacity(0.2), // Very light color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0), // Set border radius to 100
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.dblack.withOpacity(0.2), // Very light color
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0), // Set border radius to 100
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
