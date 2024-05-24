import 'package:diet_app/module/profile_module/rateus/controller/rateus_controller.dart';
import 'package:diet_app/module/profile_module/rateusdone/binding/rateusdone_binding.dart';
import 'package:diet_app/module/profile_module/rateusdone/view/rateusdone_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/rateus_customwidget.dart';

class RateusView extends GetView<IconController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 17.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              Apptexts.rateus,
              style: TextStyle(
                fontSize: 22.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.blackTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 165.h,
            ),
            Container(
              height: 80.h,
              width: 90.w,
              child: Image.asset(
                'assets/images/staar.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 13.h),
            Text(
              Apptexts.rateues,
              style: TextStyle(
                fontSize: 19.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.blackTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              Apptexts.helpus,
              style: TextStyle(
                fontSize: 15.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.blackTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 1.h),

            RateusCustomwidget(),
            SizedBox(height: 42.h),
            GestureDetector(
              onTap: (){
               Get.to( RateusdoneView(),binding: RateusdoneBinding());
              },
              child: Container(
                height: 49.h,
                decoration: BoxDecoration(
                  color: AppColors.blueBtnColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    Apptexts.Rateus,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.whiteTextColor,
                      fontWeight: FontWeight.w600,
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
