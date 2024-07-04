import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:diet_app/module/homepage_module/extrapage/controller/extrapage_controller.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';

class ExtrapageView extends GetView<ExtrapageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50.h),
          Center(
            child: SizedBox(
              height: 140.h, // Fixed height of SizedBox
              width: 315.w,
              child: SingleChildScrollView(
                child: Obx(() {
                  int itemCount = controller.filledStates.length;
                  int rowCount =
                      (itemCount / 5).ceil(); // Calculate number of rows
                  double contentHeight = 100.h *
                      rowCount
                          .toDouble(); // Calculate content height based on rows

                  return Container(
                    height: contentHeight,
                    child: GridView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: itemCount + 1, // +1 for the plus glass
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.8,
                        crossAxisCount: 5,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 5.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == itemCount) {
                          // Last item is the plus glass
                          return GestureDetector(
                            onTap: () {
                              controller.addGlass();
                            },
                            child: SvgPicture.asset(
                              Appasset.plusglass,
                            ),
                          );
                        } else {
                          // Normal glass items
                          return GestureDetector(
                            onTap: () {
                              controller.toggleFill(index);
                            },
                            child: SvgPicture.asset(
                              controller.filledStates[index]
                                  ? Appasset.fillglasssvg
                                  : Appasset.glasss,
                            ),
                          );
                        }
                      },
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
