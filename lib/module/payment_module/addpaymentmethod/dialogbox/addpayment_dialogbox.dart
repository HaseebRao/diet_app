import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/authentication_module/successpasword/binding/successpassword_binding.dart';
import 'package:diet_app/module/authentication_module/successpasword/view/successpassword_view.dart';
import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../homepage_module/bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../../homepage_module/bottom_nav_bar/view/bottom_nav_page.dart';
import '../controller/addpaymentmethod_controller.dart';
class AddpaymentDialogueBox extends StatelessWidget {
  const AddpaymentDialogueBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Align(alignment: Alignment.bottomCenter,
        child: Container(
          height: 515.h,
          decoration: BoxDecoration(
            color: AppColors.whiteTextColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 270.h,
                      child: Column(

                        children: [
                          Image.asset(
                            'assets/images/payment.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ) ),
                ),
                SizedBox(height: 5.h,),
                Text(
                  textAlign: TextAlign.center,
                  Apptexts.Yeytext,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 32.h,
                  child:  Text(
                    textAlign: TextAlign.center,
                    Apptexts.paymenttask,
                    style: TextStyle(
                      fontSize: 11.5.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor.withOpacity(0.5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height:50.h,),
                GestureDetector(
                  onTap: (){
                    Get.to(BottomNavBarScreen(),binding:BottomNavBarBinding(),);

                  },
                  child: Container(
                    height: 49.h,
                    decoration: BoxDecoration(
                      color: AppColors.blueBtnColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:  Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        Apptexts. Close,
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color:AppColors.whiteTextColor,
                          fontWeight: FontWeight.w600,
                        ),),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
