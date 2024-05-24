import 'package:diet_app/module/profile_module/faqs/binding/faqs_binding.dart';
import 'package:diet_app/module/profile_module/faqs/view/faqs_view.dart';
import 'package:diet_app/module/profile_module/helpcenter/controller/helpcenter_controller.dart';
import 'package:diet_app/module/profile_module/privacypolicy/binding/privacypolicy_binding.dart';
import 'package:diet_app/module/profile_module/privacypolicy/view/privacypolicy_view.dart';
import 'package:diet_app/module/profile_module/termofservice/binding/termofservice_binding.dart';
import 'package:diet_app/module/profile_module/termofservice/view/termofservice_view.dart';
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
import '../widget/helpcustom_widget.dart';

class HelpcenterView extends GetView<HelpcenterController>{
  @override
  Widget build(BuildContext context) {
   return
  Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(
        children: [
          SizedBox(height: 45.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.back();
                  },

                  child: SvgPicture.asset(Appasset.Arrowdiet,height: 17.h,)),
              Text(
                textAlign: TextAlign.start,
                Apptexts.helpcenter,
                style: TextStyle(
                  fontSize: 21.sp,
                  fontFamily: ApptextStyle.fontfamily,
                  color:AppColors.blackTextColor,
                  fontWeight: FontWeight.w700,
                ),),
              Container(
                height: 1.h,
                width: 17.w,
              )
            ],
          ),
       SizedBox(height: 48.h,),
          GestureDetector(
            onTap: (){
              Get.to(FaqsView(),binding: FaqsBinding(),);
            },
            child: HelpcustomWidget
              (
              text: "FAQs",
            ),
          ),
          SizedBox(height: 19.h,),
          GestureDetector(
            onTap: (){
              Get.to(PrivacypolicyView(),binding: PrivacypolicyBinding(),);
            },

            child: HelpcustomWidget
              (
              text: "Privacy Policy",
            ),
          ),
          SizedBox(height: 19.h,),
          GestureDetector(
            onTap: (){
              Get.to(TermofserviceView(),binding: TermofserviceBinding(),);
            },
            child: HelpcustomWidget
              (
              text: "Terms and Conditions",
            ),
          ),
        ],
      ),
    ),
  );
  }

}