import 'package:diet_app/module/homepage_module/extrapage/binding/extrapage_binding.dart';
import 'package:diet_app/module/homepage_module/extrapage/view/extrapage_view.dart';
import 'package:diet_app/module/homepage_module/fastingstart/binding/fastingstart_binding.dart';
import 'package:diet_app/module/homepage_module/fastingstart/view/fastingstart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'module/homepage_module/cheatfood/binding/cheatfood_binding.dart';
import 'module/homepage_module/cheatfood/view/cheatfood_view.dart';
import 'module/homepage_module/dietarydiet/view/dietarydiet_view.dart';
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
          home:CheatfoodView(),
initialBinding:CheatfoodBinding(),
        );
      },
    );
  }
}


