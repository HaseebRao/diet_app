import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_textstyle.dart';

class Q4Controller extends GetxController {
  var years = <Years>[].obs;
  var days = <Days>[].obs;

  final months = <Months>[
    Months(month: "Jan"),
    Months(month: "Feb"),
    Months(month: "March"),
    Months(month: "April"),
    Months(month: "May"),
    Months(month: "Jun"),
    Months(month: "July"),
    Months(month: "Aug"),
    Months(month: "Sep"),
    Months(month: "Oct"),
    Months(month: "Nov"),
    Months(month: "Dec"),
  ].obs;

  // Variables to store the index of the selected day, month, and year
  var slectedDay = (-1).obs;
  var selectedMonth = (-1).obs;
  var selectedYear = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    generateYears();
    generateDays();
  }

  void generateDays() {
    for (int day = 1; day <= 31; day++) {
      days.add(Days(day: day.toString(), color: Colors.black)); // Set initial color
    }
  }

  void generateYears() {
    for (int year = 1950; year <= 2024; year++) {
      years.add(Years(year: year.toString()));
    }
  }

  // Method to change the color of the selected day
  void changeDayColor(int index, Color color) {
    days[index].color = color;
    update(); // Update the UI
  }
}

class Months {
  final String month;
  Months({
    required this.month,
  });
}

class Years {
  final String year;

  Years({required this.year});
}

class Days {
  final String day;
  Color color; // Color property

  Days({required this.day, required this.color});
}
