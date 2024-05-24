import 'package:diet_app/module/payment_module/addpaymentmethod/controller/addpaymentmethod_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../dialogbox/addpayment_dialogbox.dart';
class AddpaymentmethodView extends GetView<AddpaymentmethodController>{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,)),
            SizedBox(height: 30.h,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Apptexts.paymente,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:19.1.h,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 45.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        Apptexts.oncard,
                        style: TextStyle(
                          fontSize: 12.5.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color:AppColors. Profilecircle,
                          fontWeight: FontWeight.w700,
                        ),),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Container(
                    height: 49.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.Profiletextes,width: 1.h),
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
                          hintText: Apptexts. Feliciaayase,
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
                        Apptexts.Cardnumber,
                        style: TextStyle(
                          fontSize: 12.5.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color:AppColors. Profilecircle,
                          fontWeight: FontWeight.w700,
                        ),),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Container(
                    height: 49.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.Profiletextes,width: 1.h),
                    ),
                    child: Center(
                      child: TextFormField(
                        focusNode: controller.focusNode2,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(controller.focusNode3);
                        },
                        style: TextStyle(
                          color:AppColors.LoginOR, // Setting text color to white
                          fontFamily: ApptextStyle.fontfamily, // Setting font family
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left:19.w),
                          hintText: Apptexts.numbers,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            Apptexts.Expiration,
                            style: TextStyle(
                              fontSize: 12.5.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color:AppColors. Profilecircle,
                              fontWeight: FontWeight.w700,
                            ),),
                          SizedBox(height: 8.h,),
                          Container(
                            height: 49.h,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.Profiletextes,width: 1.h),
                            ),
                            child: Center(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
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
                                  hintText: Apptexts. date,
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
                        ],
                      ),
                      SizedBox(width: 15.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            Apptexts.Cvv,
                            style: TextStyle(
                              fontSize: 12.5.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color:AppColors. Profilecircle,
                              fontWeight: FontWeight.w700,
                            ),),
                          SizedBox(height: 8.h,),
                          Container(
                            height: 49.h,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.Profiletextes,width: 1.h),
                            ),
                            child: Center(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                focusNode: controller.focusNode4,
                                textInputAction: TextInputAction.next,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(controller.focusNode5);
                                },
                                style: TextStyle(
                                  color:AppColors.LoginOR, // Setting text color to white
                                  fontFamily: ApptextStyle.fontfamily, // Setting font family
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left:19.w),
                                  hintText: Apptexts. date,
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
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height:167.h,),
                  GestureDetector(
                    onTap: (){
                      Get.dialog( AddpaymentDialogueBox(),);

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
                          Apptexts.Next,
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
            )
          ],
        ),
      ),
    ),
  );
  }
}