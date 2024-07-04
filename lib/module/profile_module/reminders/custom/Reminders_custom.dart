import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';
import '../controllers/reminders_controllers.dart';

class MyCheckboxWidget extends StatelessWidget {
  final MyCheckboxController checkboxController =
      Get.put(MyCheckboxController());
  String? text;
  IconData? icon;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.Profiletextes, width: 1.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  Appasset.breakfast,
                  height: 19.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  text ??
                      'Breakfast', // Provide a default value if text is null
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.textsxolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    side: BorderSide(color: AppColors.Profilecircle),
                    activeColor: AppColors.Profilecircle,
                    tristate: true,
                    value: checkboxController.isChecked[0],
                    onChanged: (value) {
                      checkboxController.toggleCheckbox(0, value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.Profiletextes, width: 1.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  Appasset.lunch,
                  height: 19.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  text ?? 'Lunch', // Provide a default value if text is null
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.textsxolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    side: BorderSide(color: AppColors.Profilecircle),
                    activeColor: AppColors.Profilecircle,
                    tristate: true,
                    value: checkboxController.isChecked[1],
                    onChanged: (value) {
                      checkboxController.toggleCheckbox(1, value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.Profiletextes, width: 1.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  Appasset.diner,
                  height: 19.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  text ?? 'Dinner', // Provide a default value if text is null
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.textsxolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    side: BorderSide(color: AppColors.Profilecircle),
                    activeColor: AppColors.Profilecircle,
                    tristate: true,
                    value: checkboxController.isChecked[2],
                    onChanged: (value) {
                      checkboxController.toggleCheckbox(2, value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.Profiletextes, width: 1.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  Appasset.reminder,
                  height: 19.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  text ??
                      'Intermitting Fasting', // Provide a default value if text is null
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.textsxolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    side: BorderSide(color: AppColors.Profilecircle),
                    activeColor: AppColors.Profilecircle,
                    tristate: true,
                    value: checkboxController.isChecked[3],
                    onChanged: (value) {
                      checkboxController.toggleCheckbox(3, value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 54.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.Profiletextes, width: 1.h),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  Appasset.good,
                  height: 19.h,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  text ??
                      'Cheat Food', // Provide a default value if text is null
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.textsxolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Obx(
                  () => Checkbox(
                    side: BorderSide(color: AppColors.Profilecircle),
                    activeColor: AppColors.Profilecircle,
                    tristate: true,
                    value: checkboxController.isChecked[4],
                    onChanged: (value) {
                      checkboxController.toggleCheckbox(4, value);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
