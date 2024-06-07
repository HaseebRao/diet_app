import 'package:diet_app/module/homepage_module/myrecipe/controller/myrecipe_controller.dart';
import 'package:diet_app/module/homepage_module/recipedetail/binding/recipedetail_binding.dart';
import 'package:diet_app/module/homepage_module/recipedetail/view/recipedetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
class MyrecipeView extends GetView<MyrecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
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
                   Get.back();
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
                  return GestureDetector(
                    onTap: (){
                      Get.to(() => RecipedetailView(), binding: RecipedetailBinding());
                    },

                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 20.h),
                      child: Container(
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
                          padding: EdgeInsets.only(left: 20.w,right: 5.w),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
