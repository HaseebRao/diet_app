import 'package:diet_app/module/authentication_module/login/binding/login_binding.dart';
import 'package:diet_app/module/authentication_module/login/view/login_view.dart';
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

  void validateForgot() {
    String emailPattern =
        r'^[^@\s]+@[^@\s]+\.[^@\s]+$'; // Regex pattern for validating email
    RegExp regExp = RegExp(emailPattern);

    String email = textController1.text;

    if (email.isEmpty) {
      Get.snackbar("Error", "Please enter your email");
    } else if (!regExp.hasMatch(email)) {
      Get.snackbar("Error", "Please enter a valid email address");
    } else if (email.contains(' ')) {
      Get.snackbar("Error", "Email address should not contain spaces");
    } else {
      Get.off(LoginView(), binding: LoginBinding());
    }
  }
}
