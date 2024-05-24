import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class IconController extends GetxController {
  RxDouble rating = 0.0.obs;

  void onRatingChanged(double value) {
    rating.value = value;
  }
}
