import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/view/account_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/apperance_controller.dart';
import '../widget/apperance_widget.dart';
class AppearancePage extends GetView<ApperanceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 47.h,
              ),
              Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                     Get.to(AccountView(),binding: AccountBinding(),);
                    },
                      child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,)
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    Apptexts.appearances,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color:AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height:55.h,
              ),
              Text(
                textAlign: TextAlign.center,
                Apptexts.themes,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w600,
                ),),
              SizedBox(height: 8.h,),
              ThemeContainerWidget(
                  "System Default",
                  1, Icons.tonality_rounded, () {

              }),
              ThemeContainerWidget(
                  "Light", 2, Icons.dark_mode_outlined,
                      () {
                  }),
              ThemeContainerWidget(
                  "Dark", 3, Icons.light_mode_outlined,
                      () {
                  }),
            ],
          ),
        )
    );
  }
}