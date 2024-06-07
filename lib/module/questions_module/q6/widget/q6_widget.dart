import 'package:diet_app/module/questions_module/q3/controller/q3_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';

import '../../../../common/app_textstyle.dart';
import '../controller/q6_controller.dart';



class Q6widget extends GetView<Q6Controller> {
  final String containerName;
  final int containerIndex;
  final String icon;
  Function? onPressed;

  Q6widget (
      this.containerName, this.containerIndex, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    final Q6Controller controller = Get.put(Q6Controller());

    return Column(
      children: [
        SizedBox(
          height: 17.h,
        ),
        GestureDetector(
          onTap: () {
            controller.setSelectedRadio(containerIndex);
            onPressed!();
          },
          child: Container(
            height: 54.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.Profiletextes,width: 1.h),
            ),
            child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: Row(

                children: [
                  Container(
                    height: 53.h,
                    width: 55.w,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: SvgPicture.asset(icon,fit: BoxFit.scaleDown,),
                  ),

                  Text(
                    containerName,
                    style: TextStyle(
                      color:
                      Theme.of(context).appBarTheme.titleTextStyle?.color,
                      fontSize: 11.4.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      fontWeight: FontWeight.w500,),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: 1.h,
                    child: Obx(
                          () => Radio<int>(
                       fillColor: MaterialStateProperty.resolveWith ((Set  states) {
                         if (states.contains(MaterialState.disabled)) {
                           return AppColors.Profilecircle;
                         }
                         return AppColors.Profilecircle;
                       }) ,
                        value: containerIndex,
                        groupValue: controller.selectedRadio.value,
                        onChanged: (val) {
                          controller.setSelectedRadio(val!);
                          // Call the changeTheme method to update the theme
                          switch (val) {
                            case 1:
                          }
                        },
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        )
      ],
    );
  }}
