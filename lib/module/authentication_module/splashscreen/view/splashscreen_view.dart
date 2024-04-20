import 'package:diet_app/common/app_assets.dart';
import 'package:diet_app/common/app_colors.dart';
import 'package:diet_app/common/app_textstyle.dart';
import 'package:diet_app/module/authentication_module/login/controller/login_controller.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
class SplashscreenView extends GetView<LoginController>{
//  int _delaySecond = 3;
// @override
// void initState{
//   super.initState();
//   _delayPage();
// }
//  _delayPage() async{
//   var _duration = Duration(seconds:  _delaySecond);
//   return Timer(-_duration, gotologin);
//  }
//
//  void gotologin(){
//   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginView())
//  }
  @override
  Widget build(BuildContext context) {
   return
   Scaffold(
backgroundColor:AppColors.blueBtnColor,
     body: Column(

       children: [
         SizedBox(height: 230.h,),
         Center(child: SvgPicture.asset(Appasset.Splashscreen)),
         Spacer(),
         Text(
           'Powered By: Eminent Physician',
           style: TextStyle(
             fontSize: 14.sp,
             fontFamily: ApptextStyle.fontfamily,
             color:AppColors.whiteTextColor,
             fontWeight: FontWeight.w600,
           ),),
         SizedBox(height: 50.h,),
       ],
     ),
   );
  }
}




// int _delaySecond = 3;
// @override
// void initState{
// super.initState();
// _delayPage();
// }
// _delayPage() async{
//   var _duration = Duration(seconds:  _delaySecond);
//   return Timer(-_duration, gotologin);
// }
//
// void gotologin(){
//   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginView())
// }

