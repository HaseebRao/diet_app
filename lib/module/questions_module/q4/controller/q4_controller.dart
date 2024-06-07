import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      days.add(Days(day: day.toString(), color: Colors.black));
    }
  }

  void generateYears() {
    for (int year = 1950; year <= 2024; year++) {
      years.add(Years(year: year.toString()));
    }
  }

  String calculateAge() {
    if (slectedDay.value == -1 || selectedMonth.value == -1 || selectedYear.value == -1) {
      return '';
    }

    int day = int.parse(days[slectedDay.value].day);
    int month = selectedMonth.value + 1; // Month is 0-indexed
    int year = int.parse(years[selectedYear.value].year);

    DateTime birthDate = DateTime(year, month, day);
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month || (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age.toString();
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
  Color color;

  Days({required this.day, required this.color});
}
