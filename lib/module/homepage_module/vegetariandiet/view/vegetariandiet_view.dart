import 'package:diet_app/module/homepage_module/vegetariandiet/controller/vegetariandiet_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../../../common/app_textstyle.dart';

class VegetariandietView extends GetView<VegetariandietController>{
  @override
  Widget build(BuildContext context) {
  return
   Scaffold(
     body: Column(
       children: [
         SizedBox(height: 45.h,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(onPressed: () => Get.back(), icon: SvgPicture.asset(Appasset.Arrowdiet, height: 15.8.h, color: AppColors.blackTextColor,),),
             Text(
               Apptexts. vegetarain,
               style: TextStyle(
                 fontSize:17.7.sp,
                 fontFamily: ApptextStyle.fontfamily,
                 color: AppColors.blackTextColor,
                 fontWeight: FontWeight.w700,
               ),
             ),
             SizedBox(
               width: 30.w,
             ),
           ],
         ),
         SizedBox(height: 15.h,),
         Center(
           child: SingleChildScrollView(
             child: SizedBox(
               height: 585.h,
               width: 325.w,
               child: GridView.builder(
                 scrollDirection: Axis.vertical,
                 itemCount: 8, // Number of icons
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2, // 5 icons in each row
                   mainAxisSpacing: 12.0,
                   crossAxisSpacing: 12.0,
                   childAspectRatio: 0.85,
                 ),
                 itemBuilder: (BuildContext context, int index) {
                   return Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Container(
                       decoration: BoxDecoration(
                         color: AppColors.whiteTextColor,
                         borderRadius: BorderRadius.circular(12),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.2),
                             spreadRadius: 2,
                             blurRadius: 2,
                             offset: Offset(0, 3),
                           ),
                         ],
                       ),
                       child: Padding(
                         padding:EdgeInsets.symmetric(horizontal: 12.w),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(height: 10.h,),
                             Container(
                               height: 112.h,
                               width:125.w,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),

                                 image: DecorationImage(
                                   image: AssetImage('assets/images/gridviewe.png'),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                               child:Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                                   children: [
                                     SizedBox(height: 6.h,),
                                     GestureDetector(
                                       onTap: () {
                                         controller.toggleFavorite(index); // Call the toggle function with the index
                                       },
                                       child: Container(
                                         height: 26.h,
                                         width: 27.w,
                                         decoration: BoxDecoration(
                                           color: AppColors.whiteTextColor,
                                           borderRadius: BorderRadius.circular(7),
                                         ),
                                         child: Obx(() => Icon(
                                           controller.favorites[index] ? Icons.favorite : Icons.favorite_outline,
                                           size: 23,
                                           color: AppColors.Profilecircles,
                                         )),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 10.h,),
                             Row(
                               children: [
                                 Text(
                                   Apptexts.plan2,
                                   style: TextStyle(
                                     fontSize: 14.sp,
                                     fontFamily: ApptextStyle.fontfamily,
                                     color: AppColors.blackTextColor,
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                                 Spacer(),
                                 Container(
                                   height: 18.h,
                                   width: 55.w,
                                   decoration: BoxDecoration(
                                     color: AppColors.Profilecircle,
                                     borderRadius: BorderRadius.circular(9),
                                   ),
                                   child: Center(
                                     child: Text(
                                       Apptexts.days27,
                                       style: TextStyle(
                                         fontSize: 9.sp,
                                         fontFamily: ApptextStyle.fontfamily,
                                         color: AppColors.whiteTextColor,
                                         fontWeight: FontWeight.w600,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   );// Replace with your desired icons
                 },
               ),
             ),
           ),
         ),
       ],
     ),
   );
  }
}