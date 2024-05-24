import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/authentication_module/signup/controller/signup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
class SignupView extends GetView<SignupController>{
  @override
  Widget build(BuildContext context) {
   return
   Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding:  EdgeInsets.symmetric(horizontal: 21.w),
         child: Column(
           children: [
             SizedBox(height: 52.h,),
             Text(
               Apptexts.cteateYour,
               style: TextStyle(
                 fontSize: 20.5.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color:AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),),
             SizedBox(height: 10.5.h,),
             SizedBox(
               height: 35.h,
               child: Text(
                 textAlign: TextAlign.center,
                Apptexts.CreateDummy,
                 style: TextStyle(
                   fontSize: 11.3.sp,
                   fontFamily: ApptextStyle.fontfamily,
                   color:AppColors.loginLorem ,
                   fontWeight: FontWeight.w400,
                 ),),
             ),

             SizedBox(height: 36.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   textAlign: TextAlign.start,
                 Apptexts.fullName,
                   style: TextStyle(
                     fontSize: 14.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.blackTextColor,
                     fontWeight: FontWeight.w700,
                   ),),
               ],
             ),
             SizedBox(height: 8.h,),
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
                     contentPadding: EdgeInsets.only(left:19.w),
                     hintText: Apptexts.insertYourText,
                     border: InputBorder.none,
                     hintStyle: TextStyle(
                       fontSize: 12.5.h,// Setting hint text color to white with opacity
                       color:AppColors.LoginTextform, // Setting hint text color to white with opacity
                       fontFamily: ApptextStyle.fontfamily, // Setting font family for hint text
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 22.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   textAlign: TextAlign.start,
                   Apptexts.emailText,
                   style: TextStyle(
                     fontSize: 14.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.blackTextColor,
                     fontWeight: FontWeight.w700,
                   ),),
               ],
             ),
             SizedBox(height: 8.h,),
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
                     contentPadding: EdgeInsets.only(left:19.w),
                     hintText: Apptexts.insertEmail,
                     border: InputBorder.none,
                     hintStyle: TextStyle(
                       fontSize: 12.5.h,// Setting hint text color to white with opacity
                       color:AppColors.LoginTextform,
                       // Setting hint text color to white with opacity
                       fontFamily: ApptextStyle.fontfamily, // Setting font family for hint text
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 22.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   textAlign: TextAlign.start,
                   Apptexts.createPassword,
                   style: TextStyle(
                     fontSize: 14.sp,
                     fontFamily: ApptextStyle.fontfamily,
                     color:AppColors.blackTextColor,
                     fontWeight: FontWeight.w700,
                   ),),
               ],
             ),
             SizedBox(height: 8.h,),
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
                   focusNode: controller.focusNode3,
                   textInputAction: TextInputAction.next,
                   onFieldSubmitted: (_) {
                     FocusScope.of(context).requestFocus(controller.focusNode4);
                   },
                   style: TextStyle(
                     color:AppColors.LoginOR, // Setting text color to white
                     fontFamily: ApptextStyle.fontfamily, // Setting font family
                   ),
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(left:19.w),
                     hintText: Apptexts.inputPassword,
                     border: InputBorder.none,
                     hintStyle: TextStyle(
                       color:AppColors.LoginTextform,
                       fontSize: 12.5.h,// Setting hint text color to white with opacity
                       fontFamily: ApptextStyle.fontfamily, // Setting font family for hint text
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height:137.h,),
             GestureDetector(
               onTap: (){
                 Get.off(LoginView(),binding: LoginBinding(),);

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
                     Apptexts.signupTexts,
                     style: TextStyle(
                       fontSize: 15.sp,
                       fontFamily: ApptextStyle.fontfamily,
                       color:AppColors.whiteTextColor,
                       fontWeight: FontWeight.w600,
                     ),),
                 ),
               ),
             ),
             SizedBox(height: 24.h,),
             GestureDetector(
               onTap: (){
                 Get.off(LoginView(),binding: LoginBinding(),);

               },
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     textAlign: TextAlign.center,
                     Apptexts.stillWithout,
                     style: TextStyle(
                       fontSize: 11.sp,
                       fontFamily: ApptextStyle.fontfamily,
                       color:AppColors.Loginendm ,
                       fontWeight: FontWeight.w400,
                     ),),
                   Text(
                     textAlign: TextAlign.center,
                    Apptexts.loginTexts,
                     style: TextStyle(
                       fontSize: 12.sp,
                       fontFamily: ApptextStyle.fontfamily,
                       color: AppColors.blueBtnColor,
                       fontWeight: FontWeight.w700,
                     ),),
                 ],
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
