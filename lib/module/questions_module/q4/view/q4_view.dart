import 'package:diet_app/module/questions_module/q4/controller/q4_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class Q4View extends GetView<Q4Controller>{
  @override
  Widget build(BuildContext context) {
    return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(
        children: [
          SizedBox(height: 180.h,),
Row(
  children: [
Container(
  height:185.h,
  width: 95.w,
  decoration: BoxDecoration(
    color:AppColors. account,
  ),
  child:SizedBox(
    height: 180.h,
    width: 93,
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: controller.products.length,
        itemBuilder: (context, index){
          var product = controller.products[index];
          return   Text(": ${product.name}");
        }
    ) ,
)
) ],
)







        ],
      ),
    ),
  );
  }

}