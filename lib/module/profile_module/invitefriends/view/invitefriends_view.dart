import 'package:diet_app/module/profile_module/invitefriends/controller/invitefriends_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class InvitefriendsView extends GetView<InvitefriendsController>{
  @override
  Widget build(BuildContext context) {
  return
  Scaffold(
    backgroundColor: AppColors.whiteTextColor,
    body: Column(
      children: [
        SizedBox(
          height: 425.h,
          child: Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: AppColors. Profilecircle,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.sp), // Adjust radius to your preference
                    bottomRight: Radius.circular(20.sp), // Adjust radius to your preference
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 52.h,left: 20.w),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();

                        },
                          child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,color: AppColors.whiteTextColor,))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 90.h,
                left: 45.w,
                child: Container(
                  height: 396,
                  width:270.w,
                  decoration: BoxDecoration(
                    color: AppColors.whiteTextColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 9,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      SizedBox(
                       height: 175.h, // Adjust width as needed
                        child: Image.asset('assets/images/asset.png'), // AssetImage
                      ),
                      SizedBox(height: 15.h,),
                      SizedBox(
                        height: 30.h,
                        width:175.w,
                        child:
                        Text(
                          textAlign: TextAlign.center,
                          Apptexts.data,
                          style: TextStyle(
                            fontSize: 9.3.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Container(
                        height: 26.h,
                        width:145.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          border: Border.all(color: AppColors.blackTextColor,)
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          Apptexts.refer,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  )
                ),

              )
            ],
          ),
        ),
        SizedBox(
          height: 179.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            children: [
              Container(
                height: 49.h,
                decoration: BoxDecoration(
                  color: AppColors.blueBtnColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    Apptexts.share,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.whiteTextColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }

}