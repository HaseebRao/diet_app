import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Q5Controller extends GetxController{
  var selectedHour = RxInt(TimeOfDay.now().hour % 12);
  var selectedMinute = RxInt(TimeOfDay.now().minute);
  var selectedWeightUnitIndex = RxInt(
      TimeOfDay.now().period == DayPeriod.am ? 0 : 1);

// Callback method for hour change
  void handleHourChange(int hour) {
    selectedHour.value = hour;
  }


  void handleMinuteChange(int minute) {
    selectedMinute.value = minute;
  }

  void handleWeightUnitChange(int index) {
    selectedWeightUnitIndex.value = index;
  }
}
