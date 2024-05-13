import 'package:diet_app/module/payment_module/subscription/controller/subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubscriptionView extends GetView<SubscriptionController>{
  @override
  Widget build(BuildContext context) {
  return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            child: ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 0,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/subscription2.png',
                  fit: BoxFit.none,
                ),
                Image.asset(
                  'assets/images/subscription1.png',
                  fit: BoxFit.none,
                ),
                Image.asset(
                  'assets/images/subscription3.png',
                  fit: BoxFit.none
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
  }

}