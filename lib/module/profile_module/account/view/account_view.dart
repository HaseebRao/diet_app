import 'package:diet_app/module/profile_module/Apperance/binding/apperance_binding.dart';
import 'package:diet_app/module/profile_module/Apperance/view/apperance_view.dart';
import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/controller/account_controller.dart';
import 'package:diet_app/module/profile_module/account/dialogue_box/dialogue_box.dart';
import 'package:diet_app/module/profile_module/account/logoutdialogue/logout-dialogue.dart';
import 'package:diet_app/module/profile_module/appversion/binding/appversion_binding.dart';
import 'package:diet_app/module/profile_module/appversion/view/appversion_view.dart';
import 'package:diet_app/module/profile_module/changepassword/binding/changepassword_binding.dart';
import 'package:diet_app/module/profile_module/changepassword/view/changepasswordview.dart';
import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/account_widget.dart';

class AccountView extends GetView <AccountController>{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(
        children: [
          SizedBox(height: 47.h,),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                   Get.to(ProfileView(),binding: ProfileBinding(),);
                  },

                  child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,)),
              Text(
                textAlign: TextAlign.start,
                Apptexts.acount,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),),
              Container(
                height: 1.h,
                width: 12.w,
              )
            ],
          ),
          SizedBox(height: 55.h,),
          GestureDetector(
            onTap: (){
              Get.off(AppearancePage(),binding:ApperanceBinding(),);
            },
            child: AccountWidget(
              text: Apptexts.acounts,
               icon:  Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height:17.h,),
          GestureDetector(
            onTap: (){
              Get.off(ChangepasswordView(),binding:ChangepasswordBinding(),);
            },
            child: AccountWidget(
              text: Apptexts.changePassword,
              icon:  Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height:17.h,),
          Container(
            height:54.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.Profiletextes,width: 1.h),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                children: [
                  Text(
                    Apptexts.sync,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color:AppColors.Profiletexts ,
                      fontWeight: FontWeight.w400,
                    ),),
                  Spacer(),
                  Icon(
                    Icons.sync,
                  color:   AppColors.Profilecircle,
                    size: 27.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:17.h,),

          Container(
            height:54.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.Profiletextes,width: 1.h),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                children: [
                  Text(
                    Apptexts.pushNotifications,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color:AppColors.Profiletexts ,
                      fontWeight: FontWeight.w400,
                    ),),
                  Spacer(),
                  Obx(() => Transform.scale(
                    scale: 0.9,
                    child: Switch(
                        trackOutlineColor:
                        MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                              if (controller.isNotificationSwitched.value ==
                                  true) {
                                return AppColors.Profilecircle;
                              }
                              return Colors.grey; // Use the default color.
                            }),
                        activeColor: AppColors.whiteTextColor,
                        activeTrackColor: AppColors.Profilecircle,
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: AppColors.whiteTextColor,
                        value: controller.isNotificationSwitched.value,
                        onChanged: (value) {
                          controller.toggleNotificationSwitch();
                        }),
                  )),
                ],
              ),
            ),
          ),
          SizedBox(height:18.h,),
          GestureDetector(
            onTap: (){
              Get.to(AppversionView(),binding: AppversionBinding());
            },

            child: AccountWidget(
              text: Apptexts.appversion,
              icon:  Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height:18.h,),
          GestureDetector(
            onTap: (){
              Get.dialog( DialogueBox(),);
            },
            child: AccountWidget(
              text: Apptexts.deleteAccount,
              icon:  Icons.arrow_forward_ios,
            ),
          ),
          SizedBox(height:18.h,),
          GestureDetector(
            onTap: (){
              Get.dialog( LogoutDialogue(),);
            },
            child: Container(
              height:54.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.Profiletextes,width: 1.h),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [
                    Text(
                      Apptexts.logout,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color:AppColors.account,
                        fontWeight: FontWeight.w700,
                      ),),
                    Spacer(),
                    SvgPicture.asset(Appasset.Logout,height: 12.h,),
                  ],
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