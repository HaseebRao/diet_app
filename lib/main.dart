
import 'package:diet_app/module/authentication_module/splashscreen/view/splashscreen_view.dart';
import 'package:diet_app/module/homepage_module/bottom_nav_bar/binding/bottom_nav_bar_binding.dart';


import 'package:diet_app/module/homepage_module/homepage/binding/homepage_binding.dart';
import 'package:diet_app/module/homepage_module/homepage/view/homepage_view.dart';
import 'package:diet_app/module/homepage_module/recipe/binding/recipe_binding.dart';
import 'package:diet_app/module/homepage_module/success/view/success_view.dart';
import 'package:diet_app/module/payment_module/addpaymentmethod/binding/addpaymentmethod_binding.dart';
import 'package:diet_app/module/payment_module/addpaymentmethod/view/addpaymentmethod_view.dart';
import 'package:diet_app/module/payment_module/subscription/binding/subscription_binding.dart';
import 'package:diet_app/module/payment_module/subscription/view/subscription_view.dart';
import 'package:diet_app/module/payment_module/subscriptionmethod/binding/subsmethod_binding.dart';
import 'package:diet_app/module/payment_module/subscriptionmethod/view/subsmethod_view.dart';
import 'package:diet_app/module/questions_module/applausescreen/binding/applausescreen_binding.dart';
import 'package:diet_app/module/questions_module/applausescreen/view/applausescreen_view.dart';
import 'package:diet_app/module/questions_module/q2/binding/q2_binding.dart';
import 'package:diet_app/module/questions_module/q2/view/q2_view.dart';
import 'package:diet_app/module/questions_module/q3/binding/q3_binding.dart';
import 'package:diet_app/module/questions_module/q3/view/q3_view.dart';
import 'package:diet_app/module/questions_module/q4/binding/q4_binding.dart';
import 'package:diet_app/module/questions_module/q4/view/q4_view.dart';
import 'package:diet_app/module/questions_module/q5/binding/q5_binding.dart';
import 'package:diet_app/module/questions_module/q5/view/q5_view.dart';
import 'package:diet_app/module/questions_module/q6/binding/q6_binding.dart';
import 'package:diet_app/module/questions_module/q6/view/q6_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'module/homepage_module/bottom_nav_bar/view/bottom_nav_page.dart';
import 'module/homepage_module/recipe/view/recipe_view.dart';
import 'module/questions_module/helppage/binding/helppage_binding.dart';
import 'module/questions_module/helppage/view/helppage_view.dart';
import 'module/questions_module/practice/binding/practice_binding.dart';
import 'module/questions_module/practice/view/practice-view.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home:SuccessView(),
          // initialBinding:BottomNavBarBinding(),
        );
      },
    );
  }
}


