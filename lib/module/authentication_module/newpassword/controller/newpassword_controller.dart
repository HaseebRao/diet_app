import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../successpasword/view/successpassword_view.dart';

class NewpasswordController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  RxBool isTextEntered = false.obs;

  @override
  void onInit() {
    super.onInit();
    textController2.addListener(() {
      updateButtonColor(textController2.text.isNotEmpty);
    });
  }

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

  void validateSignin() {
    String newPassword = textController1.text;
    String confirmPassword = textController2.text;

    if (newPassword.isEmpty && confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please enter your password");
    } else if (newPassword.isEmpty) {
      Get.snackbar("Error", "Please enter your password");
    } else if (newPassword.startsWith(' ')) {
      Get.snackbar("Error", "Password cannot start with a space");
    } else if (newPassword.contains(' ')) {
      Get.snackbar("Error", "Password should not contain spaces");
    } else if (newPassword.length < 6) {
      Get.snackbar("Error", "Password must be at least 6 characters long");
    } else if (confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please confirm your password");
    } else if (confirmPassword.startsWith(' ')) {
      Get.snackbar("Error", "Password cannot start with a space");
    } else if (confirmPassword.contains(' ')) {
      Get.snackbar("Error", "Password should not contain spaces");
    } else if (newPassword != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match");
    } else {
      Get.off(SuccesspasswordView());
    }
  }
}
