import 'package:diet_app/module/homepage_module/notifications/controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';
import '../../bottom_nav_bar/binding/bottom_nav_bar_binding.dart';
import '../../bottom_nav_bar/view/bottom_nav_page.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Get.off(BottomNavBarScreen(),
                      binding: BottomNavBarBinding()),
                  icon: SvgPicture.asset(
                    Appasset.Arrowdiet,
                    height: 15.8.h,
                    color: AppColors.blackTextColor,
                  ),
                ),
                Text(
                  Apptexts.notifications,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.blackTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  Apptexts.clear,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: ApptextStyle.fontfamily,
                    color: AppColors.texts,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 400,
              width: 325.w,
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 18.h),
                      child: Container(
                        height: 70.h,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.Logindivider.withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.whiteTextColor,
                                radius: 19.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.w, top: 8.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Apptexts.notification,
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.texts,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 110.w,
                                        ),
                                        Text(
                                          Apptexts.Justnow,
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            fontFamily: ApptextStyle.fontfamily,
                                            color: AppColors.texts,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      Apptexts.dummytexts,
                                      style: TextStyle(
                                        fontSize: 9.3.sp,
                                        fontFamily: ApptextStyle.fontfamily,
                                        color: AppColors.texts,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
