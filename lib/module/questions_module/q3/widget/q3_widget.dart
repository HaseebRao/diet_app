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



class QuestionContainerWidget extends GetView<Q3Controller> {
  final String containerName;
  final int containerIndex;
  final String icon;
  Function? onPressed;

  QuestionContainerWidget(
      this.containerName, this.containerIndex, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    final Q3Controller controller = Get.put(Q3Controller());

    return Column(
      children: [
        SizedBox(
          height: 10.h,
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
                   width: 60.w,
                   decoration: BoxDecoration(
                     color: AppColors.Profilecircle,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: SvgPicture.asset(icon,fit: BoxFit.scaleDown,),
                 ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text(
                    containerName,
                    style: TextStyle(
                      color:
                      Theme.of(context).appBarTheme.titleTextStyle?.color,
                      fontSize: 13.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      fontWeight: FontWeight.w400,),
                  ),



                  Spacer(),



                  Transform.scale(
                    scale: 1.h,
                    child: Obx(
                          () => Radio<int>(
                        activeColor: AppColors.Profilecircle,
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
  }
}