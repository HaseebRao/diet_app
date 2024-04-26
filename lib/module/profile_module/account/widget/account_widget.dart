import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';
class AccountWidget extends StatelessWidget {
  AccountWidget({this.text,this.icon,this.color});

  String? text;
  IconData? icon;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.Profiletextes,width: 1.h),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          children: [


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
             icon,
              color:color,
              size: 15.sp,
            ),
          ],
        ),
      ),
    );
  }
}
// Icons.arrow_forward_ios,
