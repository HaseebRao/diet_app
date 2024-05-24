import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NewpasswordController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  // Add an observable to track text input
  RxBool isTextEntered = false.obs;
  @override
  void onInit() {
    super.onInit();
    // Listen to changes in text field 2
    textController2.addListener(() {
      updateButtonColor(textController2.text.isNotEmpty);
    });
  }
  // Method to update button color
  void updateButtonColor(bool isTextEntered) {
    this.isTextEntered.value = isTextEntered;
  }
  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    super.onClose();
  }
}
