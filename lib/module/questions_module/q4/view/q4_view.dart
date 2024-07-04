import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/questions_module/q5/binding/q5_binding.dart';
import 'package:diet_app/module/questions_module/q5/view/q5_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';
import '../controller/q4_controller.dart';

class Q4View extends GetView<Q4Controller> {
  @override
  Widget build(BuildContext context) {
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
                  Apptexts.hading,
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
              value: 0.65, // 65% filled
              minHeight: 10.h,
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
                Apptexts.tell,
                style: TextStyle(
                  fontSize: 19.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Day",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Month",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 190.h,
                  width: 280.w,
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
                  child: DatePickerWidget(
                    looping: false,
                    firstDate: DateTime(1900), // Start year
                    lastDate: DateTime.now(), // End year
                    dateFormat: "dd/MMMM/yyyy",
                    locale: DatePicker.localeFromString('en'),
                    onChange: (DateTime newDate, _) {
                      controller.updateAge(newDate);
                    },
                    pickerTheme: DateTimePickerTheme(
                      pickerHeight: 160.h,
                      itemHeight: 43.h,
                      backgroundColor: Colors.transparent,
                      itemTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        fontFamily: ApptextStyle.fontfamily,
                      ),
                      dividerColor: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(height: 35.h),
                Container(
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
                      final age = controller.age.value;
                      return Text(
                        age != null ? " $age years" : 'Select a date',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.Profilecircle,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            SizedBox(height: 68.h),
            GestureDetector(
              onTap: () {
                Get.to(Q5View(), binding: Q5Binding());
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
