 import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Q2Controller extends GetxController{
  // Rx variables to hold state
  var selectedHour = RxInt(TimeOfDay.now().hour % 12);
  var selectedMinute = RxInt(TimeOfDay.now().minute);
  var selectedWeightUnitIndex = RxInt(
      TimeOfDay.now().period == DayPeriod.am ? 0 : 1);

  // Callback method for hour change
  void handleHourChange(int hour) {
    selectedHour.value = hour;
  }

  // Callback method for minute change
  void handleMinuteChange(int minute) {
    selectedMinute.value = minute;
  }

  void handleWeightUnitChange(int index) {
    selectedWeightUnitIndex.value = index;
  }
}
