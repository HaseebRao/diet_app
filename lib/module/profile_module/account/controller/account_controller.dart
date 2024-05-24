import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  RxBool isNotificationSwitched = true.obs;
  RxBool isTextEntered = false.obs;

  void toggleNotificationSwitch() {
    isNotificationSwitched.value = !isNotificationSwitched.value;
  }

  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  @override
  void onInit() {
    super.onInit();
    focusNode1.addListener(() {
      if (!focusNode1.hasFocus) {
        print('Text field 1 lost focus');
      }
    });
    focusNode2.addListener(() {
      if (!focusNode2.hasFocus) {
        print('Text field 2 lost focus');
      }
    });

    // Added listener for textController2
    textController2.addListener(() {
      updateButtonColor(textController2.text.isNotEmpty);
    });
  }

  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();
    super.onClose();
  }

  // Method to update button color
  void updateButtonColor(bool isTextEntered) {
    this.isTextEntered.value = isTextEntered;
  }
}
