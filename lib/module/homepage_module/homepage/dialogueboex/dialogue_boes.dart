import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/homepage_module/Grocery/binding/Grocery_binding.dart';
import 'package:diet_app/module/homepage_module/Grocery/view/Grocery_view.dart';
import 'package:diet_app/module/homepage_module/cheatfood/binding/cheatfood_binding.dart';
import 'package:diet_app/module/homepage_module/cheatfood/view/cheatfood_view.dart';
import 'package:diet_app/module/homepage_module/diary/binding/diary_binding.dart';
import 'package:diet_app/module/homepage_module/diary/view/diary_view.dart';
import 'package:diet_app/module/homepage_module/diet/binding/diet_binding.dart';
import 'package:diet_app/module/homepage_module/diet/view/diet_view.dart';
import 'package:diet_app/module/homepage_module/fastingstart/binding/fastingstart_binding.dart';
import 'package:diet_app/module/homepage_module/fastingstart/view/fastingstart_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../waterintake/binding/wateintake_binding.dart';
import '../../waterintake/view/waterintake_view.dart';
import '../controller/homepage_controller.dart';

class DialogueBoes extends StatelessWidget {
  const DialogueBoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  HomepageController  controller = Get.find< HomepageController >();

    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding:  EdgeInsets.only(top: 70.h,left: 25.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 430.h,
              width: 280.w,
              decoration: BoxDecoration(
                color: AppColors.whiteTextColor,

              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60.h),
                    Row(
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          Apptexts.quickasess,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(height: 312.h,
                    child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  Get.to(FastingstartView(), binding: FastingstartBinding());
                                case 1:
                                  Get.to(WaterintakeView(),binding:WateintakeBinding (),);
                                case 2:
                                  Get.to(DietView(),binding:DietBinding(),);
                                case 3:
                                  Get.to(CheatfoodView(),binding:CheatfoodBinding(),);
                                case 4:
                                  Get.to(GroceryView(),binding:GroceryBinding(),);
                                case 5:
                                  Get.to(DiaryView(),binding:DiaryBinding(),);
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15.h),
                              child: Container(
                                height:38.5 .h,
                                width: 227.w,
                                decoration: BoxDecoration(
                                  color:AppColors.fieldinnercolor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors. fieldinner, // Shadow color
                                      spreadRadius: 1,                      // How much the shadow spreads
                                      blurRadius: 1,                       // How much the shadow blurs
                                      offset: Offset(1,1),                 // The position of the shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 14.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        controller.textes[index].toString(),
                                        style: TextStyle(
                                          fontSize: 9.3.sp,
                                          fontFamily: ApptextStyle.fontfamily,
                                          color: AppColors.Profilecircle,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: AppColors.Profilecircle,
                                      size: 10.h,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),)


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
