import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/module/homepage_module/bottom_nav_bar/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBarScreen extends GetView<BottomNavBarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PersistentTabView(
        context,
        resizeToAvoidBottomInset: false,
        navBarHeight: 50.h,
        screens: controller.tabItems,
        navBarStyle: NavBarStyle.style10,
        items: controller.navBarsItems(),
        backgroundColor: AppColors.whiteTextColor,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Shadow position (x, y)
            )
          ],
        ),
      ),
    );
  }
}
