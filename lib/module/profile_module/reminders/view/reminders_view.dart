import 'package:diet_app/module/profile_module/reminders/controllers/reminders_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../custom/Reminders_custom.dart';

class RemindersVeiw extends GetView<MyCheckboxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: 47.h,
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
                  textAlign: TextAlign.start,
                  Apptexts.reminders,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  height: 1.h,
                  width: 12.w,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 58.h,
                  ),
                  Center(
                    child: MyCheckboxWidget(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
