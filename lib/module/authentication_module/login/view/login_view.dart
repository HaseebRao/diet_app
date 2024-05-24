import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/module/authentication_module/forget/binding/forget_binding.dart';
import 'package:diet_app/module/authentication_module/forget/view/forget_view.dart';
import 'package:diet_app/module/authentication_module/login/controller/login_controller.dart';
import 'package:diet_app/module/authentication_module/signup/binding/signup_binding.dart';
import 'package:diet_app/module/authentication_module/signup/view/signup_view.dart';
import 'package:diet_app/module/authentication_module/wellcome/binding/wellcome_binding.dart';
import 'package:diet_app/module/authentication_module/wellcome/view/wellcome_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';
class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
return
   Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding:  EdgeInsets.symmetric(horizontal: 21.w),
         child: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: 45.h,),
             Text(
               Apptexts.welcomeText,
               style: TextStyle(
                 fontSize: 20.5.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color:AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),),
             SizedBox(height: 10.2.h,),
             SizedBox(
               height: 35.h,
               child: Text(
                 textAlign: TextAlign.center,
                 Apptexts.dummyText,
                 style: TextStyle(
                   fontSize: 11.3.sp,
                   fontFamily: ApptextStyle.fontfamily,
                   color:AppColors.loginLorem ,
                   fontWeight: FontWeight.w400,
                 ),),
             ),
             SizedBox(height: 19.2.h,),
             Container(
               height: 37.h,
               decoration: BoxDecoration(

                 border: Border.all(color:AppColors.Loginbordercolor,),
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 61.h),
                 child: Row(
                  children: [
                    SvgPicture.asset(Appasset.LoginAplle,height: 20.h,),
                   Spacer(),
                    Text(
                      textAlign: TextAlign.center,
                      Apptexts.appleTexts,
                      style: TextStyle(
                        fontSize: 13.7.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color:AppColors.blackTextColor,
                        fontWeight: FontWeight.w700,
                      ),),
                  ],
                 ),
               ),
             ),
             SizedBox(height: 16.h,),
             Container(
               height: 37.h,
               decoration: BoxDecoration(

                 border: Border.all(color:AppColors.Loginbordercolor,),
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Padding(
                 padding: EdgeInsets.only(left: 61.h),
                 child: Row(
                   children: [
                     SvgPicture.asset(Appasset.LoginGoogle,height: 20.h,),
                    SizedBox(width: 15.w,),
                     Text(
                       textAlign: TextAlign.center,
                       Apptexts.googleTexts,
                       style: TextStyle(
                         fontSize: 13.7.sp,
                         fontFamily: ApptextStyle.fontfamily,
                         color:AppColors.blackTextColor,
                         fontWeight: FontWeight.w700,
                       ),),
                   ],
                 ),
               ),
             ),
             SizedBox(height:16.h,),
             Container(
               height: 37.h,
               decoration: BoxDecoration(

                 border: Border.all(color:AppColors.Loginbordercolor,),
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Padding(
                 padding:  EdgeInsets.only(left: 61.h),
                 child: Row(
                   children: [
                     SvgPicture.asset(Appasset.LoginFacebook,height: 20.h,),
                   SizedBox(width: 8.w,),
                     Text(
                       textAlign: TextAlign.center,
                       Apptexts.facebookText,
                       style: TextStyle(
                         fontSize: 13.7.sp,
                         fontFamily: ApptextStyle.fontfamily,
                         color:AppColors.blackTextColor,
                         fontWeight: FontWeight.w700,
                       ),),
                     Spacer(),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 26.5.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   width: 34.w,
                   height: 1.h,
                   color:AppColors.Logindivider,
                 ),
                 SizedBox(width: 5.w,),
                 Text(
                   textAlign: TextAlign.center,
                  Apptexts.orTexts,
                   style: TextStyle(
                     fontSize: 16.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.LoginOR,
                     fontWeight: FontWeight.w700,
                   ),),
                 SizedBox(width: 5.w,),
                 Container(
                   width: 34.w,
                   height: 1.h,
                   color:AppColors.Logindivider,
                 ),
               ],
             ),
             SizedBox(height: 12.5.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   textAlign: TextAlign.start,
                   Apptexts.emailTexts,
                   style: TextStyle(
                     fontSize: 13.3.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.blackTextColor,
                     fontWeight: FontWeight.w500,
                   ),),
               ],
             ),
             SizedBox(height: 8.5.h,),
             Container(
               height: 49.h,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 border: Border.all(
                   width: 1,
                   color:AppColors. Loginbordercolor,
                 ),
               ),
               child: Center(
                 child: TextFormField(
                   focusNode: controller.focusNode1,
                   textInputAction: TextInputAction.next,
                   onFieldSubmitted: (_) {
                     FocusScope.of(context).requestFocus(controller.focusNode2);
                   },
                   style: TextStyle(
                     color:AppColors.LoginOR, // Setting text color to white
                     fontFamily: ApptextStyle.fontfamily, // Setting font family
                   ),
                   decoration: InputDecoration(

                     contentPadding: EdgeInsets.symmetric(vertical:16.w,horizontal: 18.w),
                     hintText: Apptexts.hintText,
                     border: InputBorder.none,
                     hintStyle: TextStyle(
                       fontSize: 12.8.h,
                       color:AppColors.LoginTextform, // Setting hint text color to white with opacity
                       fontFamily: ApptextStyle.fontfamily, // Setting font family for hint text
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 11.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   textAlign: TextAlign.start,
                   Apptexts.passwordTexts,
                   style: TextStyle(
                     fontSize: 13.3.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.blackTextColor,
                     fontWeight: FontWeight.w500,
                   ),),
               ],
             ),
             SizedBox(height: 8.3.h,),
             Container(
               height: 49.h,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 border: Border.all(
                   width: 1,
                   color:AppColors. Loginbordercolor,
                 ),
               ),
               child: Center(
                 child: TextFormField(
                   focusNode: controller.focusNode2,
                   textInputAction: TextInputAction.next,
                   onFieldSubmitted: (_) {
                     FocusScope.of(context).requestFocus(controller.focusNode3);
                   },
                   style: TextStyle(
                     color:AppColors.LoginOR, // Setting text color to white
                     fontFamily: ApptextStyle.fontfamily, // Setting font family
                   ),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(vertical:16.w,horizontal: 18.w),
                     hintText: Apptexts.passwordHint,
                     border: InputBorder.none,

                     hintStyle: TextStyle(
                       fontSize: 12.8.h,
                       color:AppColors.LoginTextform, // Setting hint text color to white with opacity
                       fontFamily: ApptextStyle.fontfamily, // Setting font family for hint text
                     ),
                   ),
                 ),
               ),
             ),
SizedBox(height: 12.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: (){
                     Get.to( ForgetView(),binding: ForgetBinding(),);
                   },
                   child: Text(
                     textAlign: TextAlign.start,
                     Apptexts.forGetpassword,
                     style: TextStyle(
                       fontSize: 12.5.sp,
                       fontFamily: ApptextStyle.fontfamily,
                       color:AppColors.blackTextColor,
                       fontWeight: FontWeight.w700,
                     ),),
                 ),
                 SizedBox(width: 11.w,),
               ],
             ),
             SizedBox(height:21.5.h,),
             GestureDetector(
               onTap: (){
                 Get.to(WellcomeView(),binding: WellcomeBinding(),);

               },
               child: Container(
                 height: 49.h,
               decoration: BoxDecoration(
                 color: AppColors.blueBtnColor,
                 borderRadius: BorderRadius.circular(8),
               ),
                child:  Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    Apptexts.loginText,
                    style: TextStyle(
                      fontSize: 15.5.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color:AppColors.whiteTextColor,
                      fontWeight: FontWeight.w600,
                    ),),
                ),
               ),
             ),
SizedBox(height: 28.h,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      textAlign: TextAlign.center,
      Apptexts.stillAccount,
      style: TextStyle(
        fontSize: 11.sp,
        fontFamily: ApptextStyle.fontfamily,
        color:AppColors.Loginendm ,
        fontWeight: FontWeight.w400,
      ),),
    GestureDetector(
      onTap: (){
       Get.off( SignupView(),binding: SignupBinding(),);

      },
      child: Text(
        textAlign: TextAlign.center,
        Apptexts.createOnce,
        style: TextStyle(
          fontSize: 12.sp,
          fontFamily: ApptextStyle.fontfamily,
          color: AppColors.blueBtnColor,
          fontWeight: FontWeight.w700,
        ),),
    ),
  ],
),
           ],
         ),
       ),
     ),
   );
  }
}
