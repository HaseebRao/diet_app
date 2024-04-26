
import 'package:diet_app/module/authentication_module/forget/binding/forget_binding.dart';
import 'package:diet_app/module/authentication_module/forget/view/forget_view.dart';
import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/controller/login_controller.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/authentication_module/newpassword/binding/newpassword_binding.dart';
import 'package:diet_app/module/authentication_module/newpassword/view/newpassword_view.dart';
import 'package:diet_app/module/authentication_module/signup/binding/signup_binding.dart';
import 'package:diet_app/module/authentication_module/signup/view/signup_view.dart';
import 'package:diet_app/module/authentication_module/splashscreen/view/splashscreen_view.dart';
import 'package:diet_app/module/authentication_module/successpasword/binding/successpassword_binding.dart';
import 'package:diet_app/module/authentication_module/successpasword/view/successpassword_view.dart';
import 'package:diet_app/module/authentication_module/verify/binding/verify_binding.dart';
import 'package:diet_app/module/authentication_module/verify/view/verify_view.dart';
import 'package:diet_app/module/authentication_module/wellcome/binding/wellcome_binding.dart';
import 'package:diet_app/module/authentication_module/wellcome/view/wellcome_view.dart';
import 'package:diet_app/module/profile_module/Apperance/binding/apperance_binding.dart';
import 'package:diet_app/module/profile_module/Apperance/view/apperance_view.dart';
import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/view/account_view.dart';
import 'package:diet_app/module/profile_module/editprofile/binding/editprofile_binding.dart';
import 'package:diet_app/module/profile_module/editprofile/view/editprofile_view.dart';
import 'package:diet_app/module/profile_module/extra/binding/extra_binding.dart';
import 'package:diet_app/module/profile_module/extra/view/extra-view.dart';
import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'module/profile_module/extra/custom/extra_custom.dart';
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
          home:RadioListView(),
          initialBinding:ExtraBinding(),
        );
      },
    );
  }
}


