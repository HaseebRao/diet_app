import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesrecipeController extends GetxController with SingleGetTickerProviderMixin {
  var selectedSize = 'Medium'.obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
  RxString selectedTimer = "Recently added".obs;
  RxString selectedTimers = "Recently added".obs;
  RxString selectedTimeres = "Recently added".obs;
  List<String> months = [
    "A-Z",
    "Recently viewed",
    "Recently added",
    "Frequent eaten"
  ];
  void selectTime(String time) {
    selectedTimer.value = time;
  }
  void selectTimee(String time) {
    selectedTimers.value = time;
  }
  void selectTimes(String time) {
    selectedTimeres.value = time;
  }
}
