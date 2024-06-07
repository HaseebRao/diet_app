import 'package:diet_app/module/homepage_module/Favoritesrecipe/binding/favoritesrecipe_binding.dart';
import 'package:diet_app/module/homepage_module/Favoritesrecipe/view/favoritesrecipe_view.dart';
import 'package:diet_app/module/homepage_module/diet/binding/diet_binding.dart';
import 'package:diet_app/module/homepage_module/diet/view/diet_view.dart';
import 'package:diet_app/module/homepage_module/recipedetail/controller/recipedetail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';
import '../../progress/controller/progress_controller.dart';

class RecipedetailView extends GetView<RecipedetailController>{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    backgroundColor: AppColors.whiteTextColor.withOpacity(0.96),
    body: Padding(
      padding:EdgeInsets.symmetric(horizontal: 21.w),
      child: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 45.h,),
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
                  Apptexts.recipe,
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
            SizedBox(height: 22.h,),
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.Profilecircles,width: 1.w),
                image:  DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            SizedBox(height:10.h,),
            Text(
              Apptexts.spicye,
              style: TextStyle(
                fontSize:12.sp,
                fontFamily: ApptextStyle.fontfamily,
                color: AppColors.blackTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Text(
                  Apptexts. button,
                  style: TextStyle(
                    fontSize:12.5.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      backgroundColor: AppColors.wellcome.withOpacity(0.8),
                      radius: 24.0.h,
                      lineWidth: 5.7.h,
                      percent: 0.80,
                      center: Text(
                        Apptexts. value,
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      progressColor: AppColors.yellow,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      Apptexts.fat,
                      style: TextStyle(
                        fontSize: 7.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircularPercentIndicator(
                      backgroundColor: AppColors.wellcome.withOpacity(0.8),
                      radius: 24.0.h,
                      lineWidth: 5.7.h,
                      percent: 0.80,
                      center: Text(
                        Apptexts. value,
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      progressColor: AppColors.Profilecircle,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      Apptexts.carb,
                      style: TextStyle(
                        fontSize: 7.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircularPercentIndicator(
                      backgroundColor: AppColors.wellcome.withOpacity(0.8),
                      radius: 24.0.h,
                      lineWidth: 5.7.h,
                      percent: 0.80,
                      center: Text(
                        Apptexts. value,
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: ApptextStyle.fontfamily,
                          color: AppColors.blackTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      progressColor: AppColors.blue,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      Apptexts.protein,
                      style: TextStyle(
                        fontSize: 7.sp,
                        fontFamily: ApptextStyle.fontfamily,
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 1.w,),
                Stack(
                  children: [
                    Container(
                      height: 111.h,
                      width: 111.w,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
        
                      ),
                      child: SfCircularChart(
                        tooltipBehavior: controller.tooltip,
                        series: <CircularSeries<ChartData, String>>[
                          DoughnutSeries<ChartData, String>(
                            dataSource: controller.data,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            pointColorMapper: (ChartData data, _) => data.color,
                            radius: '117%',
                            innerRadius: '89%',
                            name: 'Gold',
                            cornerStyle: CornerStyle.bothFlat,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 41,
                      top: 42,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Apptexts.recipepage ,
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              fontWeight: FontWeight.w700,
                              color:AppColors.blackTextColor,
                            ),
                          ),
                          Text(
                            Apptexts. Calorie,
                            style: TextStyle(
                              fontSize: 7.9.sp,
                              fontFamily: ApptextStyle.fontfamily,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dblack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        
              ],
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
            SizedBox(height: 20.h,),
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

        
              ],
            ),
            SizedBox(height: 8.h,),
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
            SizedBox(height: 15.h,),
            Row(
              children: [
                Text(
                  Apptexts.cook,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h,),
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
            SizedBox(height: 25.h,),
        
            GestureDetector(
              onTap: (){

                  Get.to(() => FavoritesrecipeView(), binding: FavoritesrecipeBinding());


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
                    Apptexts.addto,
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