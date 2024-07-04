import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common/app_colors.dart';
import '../controller/rateus_controller.dart';

class RateusCustomwidget extends StatelessWidget {
  final IconController ratingController = Get.put(IconController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        RatingBar.builder(
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: AppColors.blueBtnColor,
          ),
          onRatingUpdate: ratingController.onRatingChanged,
        ),
      ],
    );
  }
}
