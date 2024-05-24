import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';
class HelpcustomWidget extends StatelessWidget {

  HelpcustomWidget({this.text});

  String? text;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height:53.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.Profiletextes,width: 1.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            children: [


              SizedBox(width: 12.w,),
              Text(
                text!,
                style: TextStyle(
                  fontSize: 12.5.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.textsxolors ,
                  fontWeight: FontWeight.w800,
                ),),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color:AppColors.Profiletext,
                size: 15.sp,
              ),
            ],
          ),
        ),
      );
  }
}
