
import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/homepage_module/progress/view/progress_view.dart';
import 'package:diet_app/module/homepage_module/recipe/view/recipe_view.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:diet_app/module/questions_module/practice/view/practice-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../common/app_assets.dart';
import '../../homepage/view/homepage_view.dart';

class BottomNavBarController extends GetxController{
  late List<Widget> tabItems;

  @override
  void onInit() {
    tabItems = [
     HomepageView(),
     RecipeView(),
     ProgressView(),
     ProfileView(),
    ];
    super.onInit();
  }

  var selectedTabIndex = 0.obs;
  var textSizes = [
    16.0,
    14.0,
  ].obs; // Adjust text sizes as needed

  void changeTextSize(int index) {
    selectedTabIndex.value = index;
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [

      PersistentBottomNavBarItem(
          inactiveIcon:SvgPicture.asset(Appasset.homee, height: 22.h,color: Colors.grey,
          ),
          inactiveColorSecondary: Colors.grey,
          icon: SvgPicture.asset(Appasset.homee, height: 22.h,color: Colors.white,
          ),
          inactiveColorPrimary: Color(0xffB5B5B5),
          activeColorPrimary: Color(0xff78B0A3),
          activeColorSecondary: Colors.white,

          title: "Home",
          textStyle: TextStyle(
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.w800,
              fontSize: 13.sp,
              fontFamily: ApptextStyle.fontfamily
          )
      ),


      PersistentBottomNavBarItem(
          inactiveIcon:SvgPicture.asset(Appasset.chamuch, height: 22.h,
          ),
          inactiveColorSecondary: Colors.grey,
          icon: SvgPicture.asset(Appasset.chamuch, height: 22.h,color: Colors.white,
          ),
          inactiveColorPrimary: Color(0xffB5B5B5),
          activeColorPrimary: Color(0xff78B0A3),
          activeColorSecondary: Colors.white,

          title: "Recipe",
          textStyle: TextStyle(
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.w800,
              fontSize: 13.sp,
              fontFamily: ApptextStyle.fontfamily
          )
      ),

      PersistentBottomNavBarItem(
          inactiveIcon:SvgPicture.asset(Appasset.home, height: 22.h,
          ),
          inactiveColorSecondary: Colors.grey,
          icon: SvgPicture.asset(Appasset.home, height: 22.h,color: Colors.white,
          ),
          inactiveColorPrimary: Color(0xffB5B5B5),
          activeColorPrimary: Color(0xff78B0A3),
          activeColorSecondary: Colors.white,
          title: "Progress",
          textStyle: TextStyle(
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.w800,
              fontSize: 13.sp,
              fontFamily: ApptextStyle.fontfamily
          )
      ),

      PersistentBottomNavBarItem(
        inactiveIcon:SvgPicture.asset(Appasset.profile, height: 22.h,
    ),
        inactiveColorSecondary: Colors.grey,
          icon: SvgPicture.asset(Appasset.profile, height: 22.h,color: Colors.white,
          ),
          activeColorPrimary: AppColors. Profilecircle,
          activeColorSecondary: AppColors.whiteTextColor,
          title: "Profile",
          textStyle: TextStyle(
              color: AppColors.account,
              fontWeight: FontWeight.w800,
              fontSize: 13.sp,
              fontFamily: ApptextStyle.fontfamily
          )
      ),

    ];
  }
}