import 'package:diet_app/module/payment_module/addpaymentmethod/binding/addpaymentmethod_binding.dart';
import 'package:diet_app/module/payment_module/addpaymentmethod/view/addpaymentmethod_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../widget/subsmethod_widget.dart';

class SubsmethodView extends StatefulWidget {
  @override
  _SubsmethodViewState createState() => _SubsmethodViewState();
}

class _SubsmethodViewState extends State<SubsmethodView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.whiteTextColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 25.h,
              child: IconButton(

                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(0),
                  onPressed: (){
                    Get.back();
                  }, icon: SvgPicture.asset(Appasset.Arrowdiet)),
            ),
            SizedBox(height: 75.h),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Apptexts.paymente,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    Apptexts.pay,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: ApptextStyle.fontfamily,
                      color: AppColors.blackTextColor.withOpacity(0.6),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height:30.h),
                  SubsmethodWidget(
                    svgAsset: Appasset.LoginGoogle,
                    text: "G Pay",
                    isSelected: selectedIndex == 0,
                    onSelectionChanged: (isSelected) {
                      setState(() {
                        selectedIndex = isSelected ? 0 : -1;
                      });
                    },
                  ),
                  SizedBox(height: 3.h),
                  SubsmethodWidget(
                    svgAsset: Appasset. cardicon, // Use SVG asset
                    text: "Add Card",
                    isSelected: selectedIndex == 1,
                    onSelectionChanged: (isSelected) {
                      setState(() {
                        selectedIndex = isSelected ? 1 : -1;
                      });
                    },
                  ),
                  SizedBox(
                    height: 217 .h,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(AddpaymentmethodView(),binding: AddpaymentmethodBinding(),);
                    },
                    child: Container(
                      height: 49.h,
                      decoration: BoxDecoration(
                        color: AppColors.blueBtnColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          Apptexts.next,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: ApptextStyle.fontfamily,
                            color: AppColors.whiteTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
