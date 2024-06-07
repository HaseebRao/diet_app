import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/view/account_view.dart';
import 'package:diet_app/module/profile_module/changepassword/controller/changepassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../../authentication_module/successpasword/view/successpassword_view.dart';

class ChangepasswordView extends GetView<ChangepasswordController>{
  @override
  Widget build(BuildContext context) {
   return
   Scaffold(
       backgroundColor: AppColors.whiteTextColor,
     body:SingleChildScrollView(
       child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 21.w),
           child:
           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
             SizedBox(
               height: 48.h,
             ),
             GestureDetector(
               onTap: (){
                 Get.to(AccountView(),binding:AccountBinding(),);
               },
               child: SvgPicture.asset(
                 Appasset.Arrowdiet,
                 height: 17.h,
               ),
             ),
             SizedBox(
               height: 70.h,
             ),
             Center(
               child: Column(
                 children: [
                   Text(
                     Apptexts.changepassword,
                     style: TextStyle(
                       fontSize: 21.sp,
                       fontFamily: ApptextStyle.fontfamily,
                       color: AppColors.blackTextColor,
                       fontWeight: FontWeight.w800,
                     ),
                   ),
                   SizedBox(
                     height: 14.h,
                   ),
                   SizedBox(
                     height: 45.h,
                     width: 280.w,
                     child: Text(
                       textAlign: TextAlign.center,
                       Apptexts.yourNewPasswords,

                       style: TextStyle(
                         fontSize: 12.2.sp,
                         fontFamily: ApptextStyle.fontfamily,
                         color: AppColors.blackTextColor.withOpacity(0.3),
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   ),
                   SizedBox(height: 30.h,),
                   Padding(
                     padding: EdgeInsets.only(left: 2.h),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           textAlign: TextAlign.center,
                           Apptexts.currentpassword,
                           style: TextStyle(
                             fontSize: 11.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor.withOpacity(0.5),
                             fontWeight: FontWeight.w500,
                           ),),
                         SizedBox(height: 7.h,),
                         Container(
                           height:45.h,
                           width: 300.w,
                           decoration: BoxDecoration(
                               color:AppColors.whiteTextColor,
                               boxShadow: [
                                 BoxShadow(
                                   color:AppColors.LoginTextform,
                                   blurRadius: 1.1, // Adjust the blur radius as needed
                                   spreadRadius: 1.0, // Adjust the spread radius as needed
                                   offset: Offset(0, 1), // Adjust the offset as needed
                                 ),
                               ],
                               borderRadius: BorderRadius.circular(5)
                           ),
                           child: Padding(
                             padding:  EdgeInsets.only(left: 30.w, ),
                             child: SizedBox(
                               height: 40.h,
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
                                   hintText:  Apptexts.hintYourPasswords,
                                   border: InputBorder.none,
                                   hintStyle:  TextStyle(
                                     fontSize: 13.sp,
                                     color:AppColors.blackTextColor, // Setting hint text color to white with opacity
                                     fontFamily: ApptextStyle.fontfamily,
                                     fontWeight: FontWeight.w600,
// Setting font family for hint text
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 23.h,),
                   Padding(
                     padding: EdgeInsets.only(left: 2.h),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           textAlign: TextAlign.center,
                           Apptexts.newPassword,
                           style: TextStyle(
                             fontSize: 11.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor.withOpacity(0.5),
                             fontWeight: FontWeight.w500,
                           ),),
                         SizedBox(height: 7.h,),
                         Container(
                           height:45.h,
                           width: 300.w,
                           decoration: BoxDecoration(
                               color:AppColors.whiteTextColor,
                               boxShadow: [
                                 BoxShadow(
                                   color:AppColors.LoginTextform,
                                   blurRadius: 1.1, // Adjust the blur radius as needed
                                   spreadRadius: 1.0, // Adjust the spread radius as needed
                                   offset: Offset(0, 1), // Adjust the offset as needed
                                 ),
                               ],
                               borderRadius: BorderRadius.circular(5)
                           ),
                           child: Padding(
                             padding:  EdgeInsets.only(left: 30.w,top: 1.5.h),
                             child: SizedBox(
                               height: 40.h,
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
                                   contentPadding: EdgeInsets.only(left:0.w,bottom:4.h),
                                   hintText: Apptexts.hintYourPasswords,
                                   border: InputBorder.none,
                                   hintStyle: TextStyle(
                                     fontSize: 13.sp,
                                     color:AppColors.blackTextColor, // Setting hint text color to white with opacity
                                     fontFamily: ApptextStyle.fontfamily,
                                     fontWeight: FontWeight.w600,
// Setting font family for hint text
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 23.h,),
                   Padding(
                     padding: EdgeInsets.only(left: 2.h),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           textAlign: TextAlign.center,
                           Apptexts. confirm,
                           style: TextStyle(
                             fontSize: 11.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color: AppColors.blackTextColor.withOpacity(0.5),
                             fontWeight: FontWeight.w500,
                           ),),
                         SizedBox(height: 7.h,),
                         Container(
                           height:45.h,
                           width: 300.w,
                           decoration: BoxDecoration(
                               color:AppColors.whiteTextColor,
                               boxShadow: [
                                 BoxShadow(
                                   color:AppColors.LoginTextform,
                                   blurRadius: 1.1, // Adjust the blur radius as needed
                                   spreadRadius: 1.0, // Adjust the spread radius as needed
                                   offset: Offset(0, 1), // Adjust the offset as needed
                                 ),
                               ],
                               borderRadius: BorderRadius.circular(5)
                           ),
                           child: Padding(
                             padding:  EdgeInsets.only(left: 30.w,top: 1.5.h),
                             child: SizedBox(
                               height: 40.h,
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
                                   contentPadding: EdgeInsets.only(left:0.w,bottom:4.h),
                                   hintText: Apptexts.hintYourPasswords,
                                   border: InputBorder.none,
                                   hintStyle:TextStyle(
                                     fontSize: 13.sp,
                                     color:AppColors.blackTextColor, // Setting hint text color to white with opacity
                                     fontFamily: ApptextStyle.fontfamily,
                                     fontWeight: FontWeight.w600,
// Setting font family for hint text
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height:70.h,),
                   GestureDetector(
                     onTap: (){
                       Get.to(SuccesspasswordView(),);
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
                           Apptexts.passwordtyext,
                           style: TextStyle(
                             fontSize: 15.sp,
                             fontFamily: ApptextStyle.fontfamily,
                             color:AppColors.whiteTextColor,
                             fontWeight: FontWeight.w600,
                           ),),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ])),
     )
   );
  }

}
