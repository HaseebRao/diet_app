import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../verify/binding/verify_binding.dart';
import '../../verify/view/verify_view.dart';

class ForgerController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
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
      Get.off(VerifyView(), binding: VerifyBinding());
    }
  }

  @override
  void onClose() {
    textController1.dispose();
    focusNode1.dispose();
    focusNode2.dispose();

    super.onClose();
  }
}
