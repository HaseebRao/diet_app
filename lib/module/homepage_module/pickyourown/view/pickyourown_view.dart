import 'package:diet_app/module/homepage_module/pickyourown/controller/pickyourown_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class PickyourownView extends GetView<PickyourownController>{
  @override
  Widget build(BuildContext context) {
    return
  Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        children: [
          SizedBox(height: 40.h,),
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
                Apptexts.pickyourown,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 45.w,
              ),
            ],
          ),
          SizedBox(height: 7.h,),
          SizedBox(
            height: 580.h,
            width: 325.w,
            child: GridView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              itemCount: 6, // Number of icons
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                      padding:EdgeInsets.only(left: 13.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Container(
                            height: 94.h,
                            width:120.w,
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
                                      child: Obx(() => Icon(
                                        controller.favorites[index] ? Icons.favorite : Icons.favorite_outline,
                                        size: 23,
                                        color: AppColors.Profilecircles,
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            Apptexts.spicy,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                            Apptexts.serving,
                            style: TextStyle(
                              fontSize: 7.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.dblack,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Container(
                                height: 18.h,
                                width: 55.w,
                                decoration: BoxDecoration(
                                  color: AppColors.Profilecircle,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: Text(
                                    Apptexts.keto,
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontFamily: ApptextStyle.fontfamily,
                                      color: AppColors.whiteTextColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25.w,),
                              SvgPicture.asset(
                                Appasset.fire,
                                height: 12.h,
                              ),
                              SizedBox(width: 3.w,),
                              Text(
                                Apptexts.kcl,
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  fontFamily: ApptextStyle.fontfamily,
                                  color: AppColors.dblack,
                                  fontWeight: FontWeight.w400,
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
            ),
          ),
        ],
      ),
    ),
  );
  }
}