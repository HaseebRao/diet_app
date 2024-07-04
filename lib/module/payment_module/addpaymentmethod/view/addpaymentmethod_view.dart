import 'package:diet_app/module/payment_module/addpaymentmethod/controller/addpaymentmethod_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../dialogbox/addpayment_dialogbox.dart';

class AddpaymentmethodView extends GetView<AddpaymentmethodController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38.h,
              ),
              SizedBox(
                height: 37,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: SvgPicture.asset(
                      Appasset.Arrowdiet,
                      height: 21.h,
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.h),
                    Center(
                      child: Text(
                        Apptexts.paymente,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19.1.h,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 45.h),
                    Text(
                      textAlign: TextAlign.start,
                      Apptexts.oncard,
                      style: TextStyle(
                        fontSize: 12.5.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.Profilecircle,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Obx(() => Container(
                          height: 48.h, // Set the height of the container
                          width: double
                              .infinity, // Set width as required, `double.infinity` makes it stretch to available space
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10), // Set the border radius
                            border: Border.all(
                              // Set the border color and width
                              color: controller.borderColor1.value,
                              width: 1.0,
                            ),
                          ),
                          child: TextFormField(
                            textCapitalization: TextCapitalization.words,
                            controller: controller.textController1,
                            focusNode: controller.focusNode1,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(controller.focusNode2);
                            },
                            onChanged: (value) {
                              controller.updateBorder1(value);
                            },
                            style: TextStyle(
                              color: AppColors.LoginOR,
                              fontFamily: ApptextStyle.fontfamily,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder
                                  .none, // Remove the border from the TextFormField
                              contentPadding:
                                  EdgeInsets.only(left: 19.w, top: 5.h),
                              hintText: Apptexts.Feliciaayase,
                              hintStyle: TextStyle(
                                fontSize: 12.5.h,
                                color: AppColors.LoginTextform,
                                fontFamily: ApptextStyle.fontfamily,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 22.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          Apptexts.Cardnumber,
                          style: TextStyle(
                            fontSize: 12.5.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.Profilecircle,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Obx(() => Container(
                          height: 48.h, // Set the height of the container
                          width: double.infinity, // Set the width as required
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10), // Set the border radius
                            border: Border.all(
                              // Set the border color and width
                              color: controller.borderColor1.value,
                              width: 1.0,
                            ),
                          ),
                          child: TextFormField(
                            controller: controller.textController2,
                            focusNode: controller.focusNode2,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(controller.focusNode3);
                            },
                            onChanged: (value) {
                              controller.updateBorder2(value);
                            },
                            style: TextStyle(
                              color: AppColors.LoginOR,
                              fontFamily: ApptextStyle.fontfamily,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder
                                  .none, // Remove the border from the TextFormField
                              contentPadding:
                                  EdgeInsets.only(left: 19.w, top: 5.h),
                              hintText: Apptexts.numbers,
                              hintStyle: TextStyle(
                                fontSize: 12.5.h,
                                color: AppColors.LoginTextform,
                                fontFamily: ApptextStyle.fontfamily,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 22.h),
                    SizedBox(
                      width: 320.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  color: AppColors.Profilecircle,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Obx(() => Container(
                                    height: 48.h, // Container height
                                    width: 145.w, // Container width
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          10), // Border radius
                                      border: Border.all(
                                        // Border color and width
                                        color: controller.borderColor3.value,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: controller.textController3,
                                      keyboardType: TextInputType.number,
                                      focusNode: controller.focusNode3,
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (_) {
                                        FocusScope.of(context).requestFocus(
                                            controller.focusNode4);
                                      },
                                      onChanged: (value) {
                                        controller.updateBorder3(value);
                                      },
                                      style: TextStyle(
                                        color: AppColors.LoginOR,
                                        fontFamily: ApptextStyle.fontfamily,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder
                                            .none, // Remove TextFormField border
                                        contentPadding: EdgeInsets.only(
                                            left: 19.w, top: 5.h),
                                        hintText: Apptexts.date,
                                        hintStyle: TextStyle(
                                          fontSize: 12.5.h,
                                          color: AppColors.LoginTextform,
                                          fontFamily: ApptextStyle.fontfamily,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
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
                                  color: AppColors.Profilecircle,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Obx(() => Container(
                                    height: 48.h, // Container height
                                    width: 145.w, // Container width
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          10), // Border radius
                                      border: Border.all(
                                        // Border color and width
                                        color: controller.borderColor3.value,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: controller.textController4,
                                      keyboardType: TextInputType.number,
                                      focusNode: controller.focusNode4,
                                      textInputAction: TextInputAction.next,
                                      onFieldSubmitted: (_) {
                                        FocusScope.of(context).requestFocus(
                                            controller.focusNode4);
                                      },
                                      onChanged: (value) {
                                        controller.updateBorder3(value);
                                      },
                                      style: TextStyle(
                                        color: AppColors.LoginOR,
                                        fontFamily: ApptextStyle.fontfamily,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder
                                            .none, // Remove TextFormField border
                                        contentPadding: EdgeInsets.only(
                                            left: 19.w, top: 5.h),
                                        hintText: Apptexts.numberpayment,
                                        hintStyle: TextStyle(
                                          fontSize: 12.5.h,
                                          color: AppColors.LoginTextform,
                                          fontFamily: ApptextStyle.fontfamily,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 159.h),
                    GestureDetector(
                      onTap: () {
                        Get.dialog(AddpaymentDialogueBox());
                      },
                      child: Container(
                        height: 49.h,
                        decoration: BoxDecoration(
                          color: AppColors.blueBtnColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            Apptexts.Next,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    )
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
