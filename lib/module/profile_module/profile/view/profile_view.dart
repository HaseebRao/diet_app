import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/view/account_view.dart';
import 'package:diet_app/module/profile_module/editprofile/binding/editprofile_binding.dart';
import 'package:diet_app/module/profile_module/editprofile/view/editprofile_view.dart';
import 'package:diet_app/module/profile_module/helpcenter/binding/helpcenter_binding.dart';
import 'package:diet_app/module/profile_module/helpcenter/view/helpcenter_view.dart';
import 'package:diet_app/module/profile_module/invitefriends/binding/invitefriend_binding.dart';
import 'package:diet_app/module/profile_module/invitefriends/view/invitefriends_view.dart';
import 'package:diet_app/module/profile_module/profile/controller/profile_controller.dart';
import 'package:diet_app/module/profile_module/rateus/binding/rateus_binding.dart';
import 'package:diet_app/module/profile_module/rateus/view/rateus_view.dart';
import 'package:diet_app/module/profile_module/reminders/binding/reminders_binding.dart';
import 'package:diet_app/module/profile_module/reminders/view/reminders_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/custom_widget.dart';
class ProfileView extends GetView<ProfileController>{
  ProfileController controller=Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return
Scaffold(
  backgroundColor: AppColors.whiteTextColor,
  body: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal:21.0),
      child: Column(
        children: [
          SizedBox(height:  40 .h,),
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
                  width: 80.w,
                  decoration: BoxDecoration(
    
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors. Profilecircle,width: 2.h),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
    
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
          GestureDetector(
            onTap: (){
              Get.to(EditprofileView(),binding: EditprofileBinding(),);
            },
            child: CustomWidget(
              icon:Icons.person_outline_rounded,
              text: "Profile",
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(AccountView(),binding: AccountBinding(),);
            },
            child: CustomWidget(
              icon:Icons.manage_accounts,
              text: "Account",
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(RemindersVeiw(),binding: RemindersBinding(),);
            },
            child: CustomWidget(
              icon:Icons.notifications_active_outlined,
              text: "Reminders",
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(InvitefriendsView(),binding: InvitefriendBinding(),);
            },
            child: CustomWidget(
              icon:Icons.group_add_outlined,
              text: "Invite a friend",
            ),
          ),
          CustomWidget(
            icon:Icons.language,
            text: "Languages",
          ),
          CustomWidget(
            icon:Icons.chat_outlined,
            text: "Chat with your Cocah",
          ),
          GestureDetector(
            onTap: (){
              Get.to(HelpcenterView(),binding:HelpcenterBinding(),);
            },
            child: CustomWidget(
              icon:Icons.help_outline,
              text: "Help Center",
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(RateusView(),binding:RateusBinding(),);
            },
            child: CustomWidget(
              icon:Icons.star_rate_sharp,
              text: "Rate us",
            ),
          ),
    
        ],
      ),
    ),
  ),
);
  }
}
