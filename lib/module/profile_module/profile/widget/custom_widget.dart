
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';
class CustomWidget extends StatelessWidget {


 CustomWidget({this.icon,this.text});
  IconData? icon;
  String? text;
  @override


  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 11.h),
      child: Container(
        height:49.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.Profiletextes,width: 1.h),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Row(
            children: [
              Icon(
              icon,
                color:AppColors.Profilecircle,
                size: 20.sp,
              ),
              SizedBox(width: 12.w,),
              Text(
              text!,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.Profiletexts ,
                  fontWeight: FontWeight.w400,
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
      ),
    );
  }
}




