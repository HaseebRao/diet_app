import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/apperance_controller.dart';
class  OrderTypeButton extends StatelessWidget {

final String value;
final String title;
final double amount;
final bool isFree;

  const  OrderTypeButton({
required this.value,
    required this. title,
    required this. amount,
    required this. isFree,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApperanceController>(
        builder: (controller){
          return InkWell(
            onTap:  ()=>controller.serOrderType(value),
            child:  Row(
              children: [
                Radio(value: value, groupValue: controller.orderType,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onChanged: (String? value){

                    },
                  activeColor:  Theme.of(context).primaryColor,

                )
              ],
            ),
          );
        } );
  }
}
// Radio(
// value: index,
// groupValue: controller.selectedRadioIndex.value,
// activeColor: AppColors.whiteTextColor,
// onChanged: (int? value) => controller.changeRadio(value!),
// ),