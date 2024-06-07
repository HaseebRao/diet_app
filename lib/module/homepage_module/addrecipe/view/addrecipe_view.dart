import 'dart:io';
import 'package:diet_app/module/homepage_module/addrecipe/controller/addrecipe_controller.dart';
import 'package:diet_app/module/homepage_module/success/view/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../success/binding/success_binding.dart';

class AddrecipesView extends GetView<AddrecipesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor.withOpacity(0.96),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(Appasset.Arrowdiet, height: 17.h),
                  ),
                  Text(
                    Apptexts.addrecipy,
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: 1.h,
                    width: 12.w,
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: 140.h,
                      width: 150.w,
                      child: Stack(
                        children: [
                          Obx(
                            () => Center(
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColors.Profilecircle,
                                      width: 1.5.w),
                                  image: controller.imagePath.isNotEmpty
                                      ? DecorationImage(
                                          image: FileImage(File(
                                              controller.imagePath.toString())),
                                          fit: BoxFit.fitHeight,
                                        )
                                      : DecorationImage(
                                          image: AssetImage(
                                              'assets/images/img.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 90,
                            child: GestureDetector(
                              onTap: () {
                                controller.openGallery();
                              },
                              child: Container(
                                width: 43,
                                height: 38,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.Profilecircle),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: SvgPicture.asset(
                                  Appasset.okker,
                                  width: 20.w,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                Apptexts.Recipe,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 41.h,
                width: 330.w,
                decoration: BoxDecoration(
                    color: AppColors.whiteTextColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: TextFormField(
                    style: TextStyle(
                      color: AppColors.blackTextColor,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write here',
                      hintStyle: TextStyle(
                        color: AppColors.blackTextColor,
                        fontSize: 11.5.h,
                        fontFamily: ApptextStyle.fontfamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                Apptexts.Serving,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 41.h,
                width: 330.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(
                        controller.selectedSize.value,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                      DropdownButton<String>(
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.blackTextColor,
                          size: 22.h,
                        ),
                        underline: SizedBox(),
                        items: <String>['Small', 'Medium', 'Large'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(child: Text(value,style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),),),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectedSize.value = newValue!;
                        },
                      ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 15.h,
              ),
              Text(
                Apptexts.servings,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 41.h,
                width: 330.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(
                        controller.selectednumber.value,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                      DropdownButton<String>(
                        borderRadius: BorderRadius.circular(10),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.blackTextColor,
                          size: 22.h,
                        ),
                        underline: SizedBox(),
                        items: <String>['1', '2', '3'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Center(child: Text(value,style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w400,
                            ),),),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          controller.selectednumber.value = newValue!;
                        },
          
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                children: [
                  Container(
                    height:50.h,
                    width: 253.w,
                    decoration: BoxDecoration(
          
                      border: Border.all(color: AppColors.dblack,width: 1.w),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text(
                            controller.selecterecipes.value,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.blackTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                          DropdownButton<String>(
                            borderRadius: BorderRadius.circular(10),
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.blackTextColor,
                              size: 21.h,
                            ),
                            underline: SizedBox(
                            ),
                            items: <String>['Breakfast', 'Lunch', 'Snacks','Dinner',].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Center(child: Container(
                                  child: Text(value,style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ),),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              controller.selecterecipes.value = newValue!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 45.h,
                    width: 47.w,
                    decoration: BoxDecoration(
                      color: AppColors.Profilecircle,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.whiteTextColor,
                      size: 25.h,
                    ),
                  )
                ],
              ),
              SizedBox(height: 27.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Apptexts.Ingredient,
                    style: TextStyle(
                      fontSize: 13.3.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: 23.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child:Center(
                      child: Text(
                        Apptexts.custom,
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.whiteTextColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
          
                ],
              ),
              SizedBox(height: 15.h,),
              Container(
                // width: 315.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  maxLines: null,
                  style: TextStyle(
                    color: AppColors.blackTextColor,
                  ),
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.dblack.withOpacity(0.2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.whiteTextColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 20.h,),
              Text(
                Apptexts.cook,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color: AppColors.blackTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                // width: 315.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  maxLines: null,
                  style: TextStyle(
                    color: AppColors.blackTextColor,
                  ),
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.dblack.withOpacity(0.2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.whiteTextColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 40.h,),

              GestureDetector(
                onTap: (){
                  Get.to(SuccessView(),binding: SuccesssBinding(),);
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
                      Apptexts.recipes,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color:AppColors.whiteTextColor,
                        fontWeight: FontWeight.w600,
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
            ],
          ),
        ),
      ),
    );
  }
}
