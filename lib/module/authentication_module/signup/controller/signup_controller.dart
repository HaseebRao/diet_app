import 'package:diet_app/module/authentication_module/sinupotp/binding/sinupotp_binding.dart';
import 'package:diet_app/module/authentication_module/sinupotp/view/sinupotp_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  RxBool obscureText = true.obs;
  void togglePasswordVisibility() {
    obscureText.toggle();
    update();
  }

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
    focusNode3.addListener(() {
      if (!focusNode3.hasFocus) {
        print('Text field 3 lost focus');
      }
    });
    focusNode4.addListener(() {
      if (!focusNode4.hasFocus) {
        print('Text field 4 lost focus');
      }
    });
  }

  void validateSignup() {
    String emailPattern =
        r'^[^@\s]+@[^@\s]+\.[^@\s]+$'; // Regex pattern for validating email
    RegExp regExp = RegExp(emailPattern);
    String name = textController1.text;
    String email = textController2.text;
    String password = textController3.text;

    if (name.isEmpty && email.isEmpty && password.isEmpty) {
      Get.snackbar("Error", "Fields can not be empty");
    } else if (name.isEmpty) {
      Get.snackbar("Error", "Please enter your name");
    } else if (name.startsWith(' ')) {
      Get.snackbar("Error", "Name cannot start with a space");
    } else if (email.isEmpty) {
      Get.snackbar("Error", "Please enter your email");
    } else if (!regExp.hasMatch(email)) {
      Get.snackbar("Error", "Please enter a valid email address");
    } else if (email.contains(' ')) {
      Get.snackbar("Error", "Email address should not contain spaces");
    } else if (password.isEmpty) {
      Get.snackbar("Error", "Please enter your password");
    } else if (password.startsWith(' ')) {
      Get.snackbar("Error", "Password cannot start with a space");
    } else if (password.contains(' ')) {
      Get.snackbar("Error", "Password should not contain spaces");
    } else if (password.length < 6) {
      Get.snackbar("Error", "Password must be at least 6 characters long");
    } else {
      Get.off(SinupotpView(), binding: SinupotpBinding());
    }
  }

  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.onClose();
  }
}
