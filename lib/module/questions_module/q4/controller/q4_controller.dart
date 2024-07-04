import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Q4Controller extends GetxController {
  var age = Rx<int?>(null);

  void updateAge(DateTime selectedDate) {
    final now = DateTime.now();
    int calculatedAge = now.year - selectedDate.year;

    // Adjust age if the birthday hasn't occurred yet this year
    if (now.month < selectedDate.month ||
        (now.month == selectedDate.month && now.day < selectedDate.day)) {
      calculatedAge--;
    }

    age.value = calculatedAge;
  }
}
