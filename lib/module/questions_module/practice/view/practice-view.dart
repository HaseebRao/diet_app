import 'dart:math';

import 'package:diet_app/module/questions_module/q2/binding/q2_binding.dart';
import 'package:diet_app/module/questions_module/q2/view/q2_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wheel_picker/wheel_picker.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/practice_controller.dart';

class PracticeView extends GetView<PracticeController> {
  const PracticeView({
    Key? key,
  }) : super(key: key);

  Widget itemBuilder(BuildContext context, int index, bool isSelected) {
    final textStyle = TextStyle(
      fontSize: 22.0,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: isSelected ? Colors.black : AppColors.blueBtnColor,
    );
    final itemText = "$index".padLeft(2,);
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
        padding: EdgeInsets.symmetric(horizontal: 21.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 47.h,
            ),
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: SvgPicture.asset(
                Appasset.Arrowdiet,
                height: 17.h,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Apptexts.textno,
                  style: TextStyle(
                      fontSize: 15.1.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            LinearProgressIndicator(
              value: 0.1, // 20% filled
              minHeight: 11.h,
              backgroundColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.Profilecircle),
            ),
            SizedBox(
              height: 65.h,
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                Apptexts.weight,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 51.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 208.h,
                      width: 242.w,
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
                                500, // Increase itemCount to 500 for hours
                            initialIndex: controller.selectedHour.value,
                            looping: false,
                            style: wheelStyle,
                            selectedIndexColor: Colors.black,
                            onIndexChanged: controller.handleHourChange,
                          ),
                          const Text("        ",
                              style: TextStyle(
                                  fontSize: 22.0,
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
                      right: 35.w,
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
                      right: 35.w,
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
                            fontSize: 22.0,
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
            SizedBox(height: 43.h), // Add some spacing
            Center(
              child: Container(
                height: 45.h,
                width: 150.w,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.backcolor.withOpacity(0.7), width: 1.w),
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
                          ) + ':' + selectedMinute.toString().padLeft(
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
            ),
            SizedBox(height: 62.h), // Add some spacing
            GestureDetector(
              onTap: () {
                Get.to(Q2View(),binding: Q2Binding(),);
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
          ],
        ),
      ),
    );
  }
}
