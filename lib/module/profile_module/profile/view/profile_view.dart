import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/module/profile_module/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/custom_widget.dart';
class ProfileView extends GetView<ProfileController>{
  @override
  Widget build(BuildContext context) {
    return
Scaffold(
  body: Padding(
    padding: EdgeInsets.symmetric(horizontal:21.0),
    child: Column(

      children: [
        SizedBox(height: 40.h,),
        Container(
          height: 101.h,
          decoration: BoxDecoration(
            color:  AppColors.Profile.withOpacity(0.4),
              borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 18.w,),
              Container(
                height: 75.h,
                width: 78.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: AppColors. Profilecircle,width: 2.h),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                        color: AppColors.Profilecircles,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0.h,left: 10.w),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Hi,',
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),),
                        Text(
                          textAlign: TextAlign.center,
                          ' Kevin L. Lablanc',
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.blackTextColor ,
                            fontWeight: FontWeight.w800,
                          ),),
                      ],
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'kevin.m.labl834@gmail.com',
                      style: TextStyle(
                        fontSize: 10.7.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color:AppColors.Profiletext ,
                        fontWeight: FontWeight.w600,
                      ),),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height:18.h,),
        CustomWidget(
          icon:Icons.person_outline_rounded,
          text: "Profile",
        ),
        CustomWidget(
          icon:Icons.manage_accounts,
          text: "Account",
        ),
        CustomWidget(
          icon:Icons.notifications_active_outlined,
          text: "Reminders",
        ),
        CustomWidget(
          icon:Icons.group_add_outlined,
          text: "Invite a friend",
        ),
        CustomWidget(
          icon:Icons.language,
          text: "Languages",
        ),
        CustomWidget(
          icon:Icons.chat_outlined,
          text: "Chat with your Cocah",
        ),
        CustomWidget(
          icon:Icons.help_outline,
          text: "Help Center",
        ),
        CustomWidget(
          icon:Icons.star_rate_sharp,
          text: "Rate us",
        ),
      ],
    ),
  ),
);
  }

}
// Padding(
// padding:  EdgeInsets.only(bottom: 25.0),
// child: Container(
// height: 0.4.h,
// width: 370,
// color:AppColors.BlackColor,
// ),
// )