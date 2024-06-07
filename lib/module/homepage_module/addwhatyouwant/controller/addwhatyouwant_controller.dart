import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';
import 'package:flutter/material.dart';

class MealItem {
  final String svgAsset;
  final String text;
  bool isSelected;
  Color color;

  MealItem({
    required this.svgAsset,
    required this.text,
    this.isSelected = false,
    this.color = Colors.white, // default color
  });
}

class AddwhatyouwantController extends GetxController {
  var selectedDate = DateTime.now().obs;

  // List of meal items with initial values
  var mealItems = <MealItem>[
    MealItem(svgAsset: Appasset.faluda, text: Apptexts.breakfast),
    MealItem(svgAsset: Appasset.chaay, text: Apptexts.lunch),
    MealItem(svgAsset: Appasset.burger, text: Apptexts.dinner),
  ].obs;

  void updateDate(DateTime newDate) {
    selectedDate.value = newDate;
  }

 var changecolor = (-1).obs;
}
