import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import '../../wellcome/view/wellcome_view.dart';

class LoginController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  RxBool obscureText = true.obs;
  void togglePasswordVisibility() {
    obscureText.toggle();
    update();
  }

  void validateSignin() {
    String emailPattern =
        r'^[^@\s]+@[^@\s]+\.[^@\s]+$'; // Regex pattern for validating email
    RegExp regExp = RegExp(emailPattern);
    String email = textController1.text;
    String password = textController2.text;

    if (email.isEmpty && password.isEmpty) {
      Get.snackbar("Error", "Fields can not be empty");
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
      Get.off(WellcomeView());
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
