import 'package:diet_app/module/authentication_module/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
return
   Scaffold(
     backgroundColor:AppColors.blueBtnColor,
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 12.0),
       child: Column(
         children: [
           SizedBox(height: 30.h,),
           Text(
             'Welcome Back',
             style: TextStyle(
               fontSize: 22.sp,
               fontFamily: ApptextStyle.fontfamily,
               color:AppColors.blackTextColor,
               fontWeight: FontWeight.w700,
             ),),
         ],
       ),
     ),
   );
  }
}
