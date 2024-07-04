import 'dart:math';
import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/module/questions_module/q2/controller/q2_controller.dart';
import 'package:diet_app/module/questions_module/q3/binding/q3_binding.dart';
import 'package:diet_app/module/questions_module/q3/view/q3_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wheel_picker/wheel_picker.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../profile_module/profile/binding/profile_binding.dart';
import '../../../profile_module/profile/view/profile_view.dart';

class Q2View extends GetView<Q2Controller> {
  Widget itemBuilder(BuildContext context, int index, bool isSelected) {
    final textStyle = TextStyle(
      fontSize: 22.0,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: isSelected ? Colors.black : AppColors.blueBtnColor,
    );

    final itemText = "$index".padLeft(
      2,
    );

    return Container(
      decoration: BoxDecoration(),
      child: Text(itemText, style: textStyle),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wheelStyle = WheelPickerStyle(
      size: 250,
      itemExtent: 50, // Adjusted item extent for better visibility
      squeeze: 1.20,
      diameterRatio: .8,
      surroundingOpacity: .28,
      magnification: 1.2,
    );
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42.h,
            ),
            SizedBox(
              height: 25.h,
              child: IconButton(
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Get.back();
                  },
                  icon: SvgPicture.asset(Appasset.Arrowdiet)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Apptexts.valuetext,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            LinearProgressIndicator(
              value: 0.2, // 20% filled
              minHeight: 11.h,
              backgroundColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
            ),
            SizedBox(
              height: 45.h,
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                Apptexts.Q2,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 215.h,
                      width: 240.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.whiteTextColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WheelPicker(
                            builder: (context, index) => itemBuilder(context,
                                index, index == controller.selectedHour.value),
                            itemCount:
                                200, // Increase itemCount to 500 for hours
                            initialIndex: controller.selectedHour.value,
                            looping: false,
                            style: wheelStyle,
                            selectedIndexColor: Colors.black,
                            onIndexChanged: controller.handleHourChange,
                          ),
                          Text("        ",
                              style: TextStyle(
                                  fontSize: 21.sp,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blueBtnColor)),
                          WheelPicker(
                            builder: (context, index) => itemBuilder(
                                context,
                                index,
                                index == controller.selectedMinute.value),
                            itemCount: 10, // Change itemCount to 10 for minutes
                            initialIndex: controller.selectedMinute.value,
                            looping: false,
                            style: wheelStyle,
                            enableTap: true,
                            selectedIndexColor: Colors.black,
                            onIndexChanged: controller.handleMinuteChange,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      left: 35.w,
                      child: Container(
                        height: min(1.3, 1.3),
                        width: 70.w,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      right: 33.w,
                      child: Container(
                        height: min(1.3, 1.3),
                        width: 70.w,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    Positioned(
                      top: 75.h,
                      left: 35.w,
                      child: Container(
                        height: min(1.3, 1.3),
                        width: 70.w,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                    Positioned(
                      top: 75.h,
                      right: 33.w,
                      child: Container(
                        height: min(1.3, 1.3),
                        width: 70.w,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15.w),
                WheelPicker(
                  itemCount: 2,
                  builder: (context, index) {
                    return Text(["Kg", "Lb"][index],
                        style: TextStyle(
                            fontSize: 21.sp,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blueBtnColor));
                  },
                  initialIndex: controller.selectedWeightUnitIndex.value,
                  looping: false,
                  style: wheelStyle.copyWith(
                    shiftAnimationStyle: const WheelShiftAnimationStyle(
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceOut,
                    ),
                  ),
                  onIndexChanged: controller.handleWeightUnitChange,
                ),
              ],
            ),
            SizedBox(height: 35.h),
            Center(
              child: Container(
                height: 45.h,
                width: 140.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Obx(() {
                    final selectedHour = controller.selectedHour.value;
                    final selectedMinute = controller.selectedMinute.value;
                    final selectedWeightUnitIndex =
                        controller.selectedWeightUnitIndex.value;
                    return Text(
                      '${selectedWeightUnitIndex == 0 ? selectedHour.toString().padLeft(
                            2,
                          ) + '.' + selectedMinute.toString().padLeft(
                            2,
                          ) + " Kg" : (selectedHour * 2.20462).toStringAsFixed(2) + " Lb"}',
                      style: TextStyle(
                          fontSize: 22.0,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blueBtnColor),
                    );
                  }),
                ),
              ),
            ), // Add some spacing

            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(
                  Q3View(),
                  binding: Q3Binding(),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 45.h),
                child: Container(
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: AppColors.blueBtnColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      Apptexts.continues,
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
            ),
          ],
        ),
      ),
    );
  }
}
