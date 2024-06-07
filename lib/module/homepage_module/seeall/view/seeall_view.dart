import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
import 'package:diet_app/module/homepage_module/dietarydiet/binding/dietarydiet_binding.dart';
import 'package:diet_app/module/homepage_module/dietarydiet/view/dietarydiet_view.dart';
import 'package:diet_app/module/homepage_module/keto/binding/keto_binding.dart';
import 'package:diet_app/module/homepage_module/keto/view/keto_view.dart';
import 'package:diet_app/module/homepage_module/lowcarbdiet/binding/lowcarbdiet_binding.dart';
import 'package:diet_app/module/homepage_module/lowcarbdiet/view/lowcarbdiet_view.dart';
import 'package:diet_app/module/homepage_module/mediterraneandiet/binding/mediterraneandiet_binding.dart';
import 'package:diet_app/module/homepage_module/mediterraneandiet/view/mediterraneandiet_view.dart';
import 'package:diet_app/module/homepage_module/paleodiet/binding/paleodiet_binding.dart';
import 'package:diet_app/module/homepage_module/paleodiet/view/paleodiet_view.dart';
import 'package:diet_app/module/homepage_module/seeall/controller/seeall_controller.dart';
import 'package:diet_app/module/homepage_module/vegandiet/binding/vegandiet_binding.dart';
import 'package:diet_app/module/homepage_module/vegandiet/view/vegandiet_view.dart';
import 'package:diet_app/module/homepage_module/vegetariandiet/binding/vegetariandiet_binding.dart';
import 'package:diet_app/module/homepage_module/vegetariandiet/view/vegetariandiet_view.dart';
import 'package:diet_app/module/homepage_module/zonediet/binding/zonediet_binding.dart';
import 'package:diet_app/module/homepage_module/zonediet/view/zonediet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class SeeallView extends GetView<SeeAllController>{
  @override
  Widget build(BuildContext context) {

    return
    Scaffold(
      backgroundColor: AppColors.dietBackgroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(height: 45.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () => Get.back(), icon: SvgPicture.asset(Appasset.Arrowdiet, height: 15.8.h, color: AppColors.blackTextColor,),),
                Text(
                  Apptexts.seall ,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 35.w,
                ),
              ],
            ),
            SizedBox(height: 10.h,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                height: 590.h,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: controller.texts.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                    return Padding(
                      padding:  EdgeInsets.only(bottom: 13.h),
                      child: GestureDetector(
                        onTap: (){
                          switch(index){

                            case 0 :
                             Get.to(KetoView(),binding: KetoBinding());
                            case 1:
                              Get.to(MediterraneandietView(),binding: MediterraneandietBinding());
                            case 2:
                              Get.to(PaleodietView(),binding: PaleodietBinding());
                            case 3:
                              Get.to(VegetariandietView(),binding: VegetariandietBinding());
                            case 4:
                              Get.to(VegandietView(),binding: VegandietBinding());
                            case 5:
                              Get.to(LowcarbdietView(),binding: LowcarbdietBinding());
                            case 6:
                              Get.to(DietarydietView(),binding: DietarydietBinding());
                            case 7:
                              Get.to( ZonedietView(),binding:ZonedietBinding());

                          }
                        },
                        child: Container(
                          height: 53.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: AppColors.whiteTextColor,
                            border: Border.all(color: AppColors.dietBorderColor)
                          ),
                          child:  Padding(
                            padding:  EdgeInsets.only(left:20.w),
                            child: Row(
                              children: [
                                Text(
                            controller.texts[index].toString(),
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: ApptextStyle.fontfamily,
                                    color: AppColors.blackTextColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    );
                    }
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }

}