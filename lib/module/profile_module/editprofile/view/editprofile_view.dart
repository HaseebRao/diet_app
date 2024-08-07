import 'dart:io'; // Import 'dart:io' for File
import 'package:diet_app/module/profile_module/account/binding/account_binding.dart';
import 'package:diet_app/module/profile_module/account/view/account_view.dart';
import 'package:diet_app/module/profile_module/editprofile/controller/editprofile_controller.dart';
import 'package:diet_app/module/profile_module/profile/binding/profile_binding.dart';
import 'package:diet_app/module/profile_module/profile/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class EditprofileView extends GetView<EditprofileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            children: [
              SizedBox(
                height: 45.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          Appasset.Arrowdiet,
                          height: 17.h,
                        )),
                  ),
                  SizedBox(
                    width: 85.w,
                  ),
                  Obx(
                    () => Center(
                      child: Container(
                        height: 100.h,
                        width: 107.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.Profilecircle, width: 2.h),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            controller.openGallery();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.Profilecircles,
                                image: controller.imagePath.isNotEmpty
                                    ? DecorationImage(
                                        image: FileImage(File(
                                            controller.imagePath.toString())),
                                        fit: BoxFit.fitWidth,
                                      )
                                    : null, // Set image to null if imagePath is empty
                              ),
                              child: controller.imagePath
                                      .isNotEmpty // Check if imagePath is not empty
                                  ? null // If image is chosen, no need for SvgPicture
                                  : SvgPicture.asset(
                                      Appasset.Camera,
                                      width: 20.w,
                                      fit: BoxFit.scaleDown,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    Apptexts.fullName,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.Profiletextes, width: 1.h),
                ),
                child: Center(
                  child: TextFormField(
                    focusNode: controller.focusNode1,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(controller.focusNode2);
                    },
                    style: TextStyle(
                      color: AppColors.LoginOR, // Setting text color to white
                      fontFamily: ApptextStyle.fontfamily,
                      fontSize: 12.sp,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19.w),
                      hintText: Apptexts.profileEdit,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.Editprofile.withOpacity(
                            0.5), // Setting hint text color to white with opacity
                        fontFamily: ApptextStyle
                            .fontfamily, // Setting font family for hint text
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    Apptexts.phonetext,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.Profiletextes, width: 1.h),
                ),
                child: Center(
                  child: TextFormField(
                    focusNode: controller.focusNode2,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(controller.focusNode3);
                    },
                    style: TextStyle(
                      color: AppColors.LoginOR, // Setting text color to white
                      fontFamily: ApptextStyle.fontfamily,
                      fontSize: 12.sp,
                    ),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19.w),
                      hintText: Apptexts.phonenumber,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.Editprofile.withOpacity(
                            0.5), // Setting hint text color to white with opacity
                        fontFamily: ApptextStyle
                            .fontfamily, // Setting font family for hint text
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    Apptexts.emailtexts,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.Profiletextes, width: 1.h),
                ),
                child: Center(
                  child: TextFormField(
                    focusNode: controller.focusNode3,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(controller.focusNode4);
                    },
                    style: TextStyle(
                      color: AppColors.LoginOR, // Setting text color to white
                      fontFamily: ApptextStyle.fontfamily,
                      fontSize: 12.sp,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19.w),
                      hintText: Apptexts.emailaddress,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.Editprofile.withOpacity(
                            0.5), // Setting hint text color to white with opacity
                        fontFamily: ApptextStyle
                            .fontfamily, // Setting font family for hint text
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    Apptexts.location,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.Profiletextes, width: 1.h),
                ),
                child: Center(
                  child: TextFormField(
                    focusNode: controller.focusNode4,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(controller.focusNode5);
                    },
                    style: TextStyle(
                      color: AppColors.LoginOR, // Setting text color to white
                      fontFamily: ApptextStyle.fontfamily,
                      fontSize: 12.sp,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19.w),
                      hintText: Apptexts.locationadress,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.Editprofile.withOpacity(
                            0.5), // Setting hint text color to white with opacity
                        fontFamily: ApptextStyle
                            .fontfamily, // Setting font family for hint text
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    Apptexts.currentWeight,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: AppColors.Profiletextes, width: 1.h),
                ),
                child: Center(
                  child: TextFormField(
                    focusNode: controller.focusNode5,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context)
                          .requestFocus(controller.focusNode6);
                    },
                    style: TextStyle(
                      color: AppColors.LoginOR, // Setting text color to white
                      fontFamily: ApptextStyle.fontfamily,
                      fontSize: 12.sp,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 19.w),
                      hintText: Apptexts.Lbs,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: AppColors.Editprofile.withOpacity(
                            0.5), // Setting hint text color to white with opacity
                        fontFamily: ApptextStyle
                            .fontfamily, // Setting font family for hint text
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    ProfileView(),
                    binding: ProfileBinding(),
                  );
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
                      Apptexts.save,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.whiteTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
