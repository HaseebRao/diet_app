import 'package:diet_app/module/homepage_module/myrecipe/binding/myrecipe_binding.dart';
import 'package:diet_app/module/homepage_module/myrecipe/view/myrecipe_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../controller/recipe_controller.dart';

class RecipeView extends GetView<RecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),
              Center(
                child: Text(
                  Apptexts.rrecipe,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 39.h,
                width: 330.w,
                child: TextFormField(
                  onChanged: (text) => controller.updateSearchText(text),
                  style: TextStyle(
                    color: AppColors.blackTextColor,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        Appasset.search,
                        height: 2.h,
                      ),
                    ),
                    hintText: 'Search here',
                    hintStyle: TextStyle(
                      color: AppColors.dblack,
                      fontSize: 11.5.h,
                      fontFamily: ApptextStyle.fontfamily,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.dblack.withOpacity(0.2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.dblack.withOpacity(0.2),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                height: 130.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/recipe.png'),
                    fit: BoxFit.fill,
                  ),

                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 9.w, top: 17.5.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            Apptexts.rrecipe1,
                            style: TextStyle(
                              fontSize: 15.4.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            Apptexts.rrecipe2,
                            style: TextStyle(
                              fontSize: 15.4.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            Apptexts.rrecipe3,
                            style: TextStyle(
                              fontSize: 15.4.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            Apptexts.rrecipe4,
                            style: TextStyle(
                              fontSize: 15.4.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: AppColors.whiteTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => controller.toggleSelection(),
                      child: Container(
                        height: 24.h,
                        width: 102.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: controller.isSelectedDiscover.value
                              ? AppColors.Profilecircle
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            Apptexts.Discover,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              color: controller.isSelectedDiscover.value
                                  ? Colors.white
                                  : AppColors.dblack,
                              fontWeight: controller.isSelectedDiscover.value
                                  ? FontWeight.w800
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25.w),
                    GestureDetector(
                      onTap: () => controller.toggleSelection(),

                      child: GestureDetector(
                        onTap: (){
                          Get.to(MyrecipeView(),binding: MyrecipeBinding(),);
                        },
                        child: Container(
                          height: 24.h,
                          width: 102.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: controller.isSelectedDiscover.value
                                ? Colors.white
                                : AppColors.Profilecircle,
                          ),
                          child: Center(
                            child: Text(
                              Apptexts.myrecipe,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: ApptextStyle.fontfamily,
                                color: controller.isSelectedDiscover.value
                                    ? AppColors.dblack
                                    : Colors.white,
                                fontWeight: controller.isSelectedDiscover.value
                                    ? FontWeight.w400
                                    : FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      height: 25.h,
                      width: 68.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: AppColors. yellowdark
                      ),
                      child: Center(
                        child: Text(
                          Apptexts.Addnew,
                          style: TextStyle(
                            fontSize: 9.5.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),


SizedBox(
  height: 16.h,),
              Center(
                child: SizedBox(
                  height: 320.h,
                  width: 325.w,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4, // Number of icons
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 5 icons in each row
                      mainAxisSpacing: 17.0,
                      crossAxisSpacing: 6.0,
                      childAspectRatio: 0.78,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.whiteTextColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding:EdgeInsets.only(left: 13.h),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h,),
                                Container(
                                  height: 94.h,
                                  width:120.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: DecorationImage(
                                      image: AssetImage('assets/images/gridviewe.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 6.h,),
                                        Container(
                                          height: 26.h,
                                          width: 27.w,
                                          decoration: BoxDecoration(
                                            color: AppColors.whiteTextColor,
                                            borderRadius: BorderRadius.circular(7 ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_outline,
                                            size: 23,
                                            color: AppColors.Profilecircles,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Text(
                                  Apptexts.spicy,
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                  Apptexts.serving,
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.dblack,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    Container(
                                    height: 18.h,
                                      width: 55.w,
                                      decoration: BoxDecoration(
                                        color: AppColors.Profilecircle,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          Apptexts.keto,
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.whiteTextColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 25.w,),
                                    SvgPicture.asset(
                                      Appasset.fire,
                                      height: 12.h,
                                    ),
                                    SizedBox(width: 3.w,),
                                    Text(
                                      Apptexts.kcl,
                                      style: TextStyle(
                                        fontSize: 9.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.dblack,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );// Replace with your desired icons
                    },
                    // Make the grid non-scrollable
                  ),
                ),
              ),
          SizedBox(height: 30.h,),
            ],
          ),
        ),
      ),
    );
  }
}
