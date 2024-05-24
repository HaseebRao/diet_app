import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
class LogoutDialogue extends StatelessWidget {
  const LogoutDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 390.h,
          width: 310.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.whiteTextColor,
          ),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Text(
                textAlign: TextAlign.center,
                Apptexts.logoutes,
                style: TextStyle(
                  fontSize:21.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor ,
                  fontWeight: FontWeight.w800,
                ),),
              SizedBox(height: 10.h,),
              SizedBox(
                height: 35.h,
                width: 220.w,
                child: Text(
                  textAlign: TextAlign.center,
                  Apptexts.logouttext,
                  style: TextStyle(
                    fontSize:11.9.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color:AppColors.blackTextColor.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Container(
                  height: 155.h,
                  child: Image.asset(
                    'assets/images/logoutpic.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:30.0),
                child: Row(
                  children: [
                    Container(
                      height: 38.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                        color:AppColors.blueBtnColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          Apptexts.yestext,
                          style: TextStyle(
                            fontSize:12.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.whiteTextColor ,
                            fontWeight: FontWeight.w400,
                          ),),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 38.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                        color:AppColors.whiteTextColor ,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.blackTextColor,width: 0.2.h)
                      ),
                      child: Center(
                        child: Text(
                          Apptexts. notext,
                          style: TextStyle(
                            fontSize:12.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color:AppColors.blackTextColor,
                            fontWeight: FontWeight.w400,
                          ),),
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
