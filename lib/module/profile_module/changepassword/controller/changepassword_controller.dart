import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../authentication_module/successpasword/view/successpassword_view.dart';

class ChangepasswordController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
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
        print('Text field 3 lost focus');
      }
    });
  }

  void validation() {
    if (textController1.text.isEmpty &&
        textController2.text.isEmpty &&
        textController3.text.isEmpty) {
      Get.snackbar("Error", "Fields can not be empty");
    } else if (textController1.text.isEmpty) {
      Get.snackbar("Error", "Please enter current password");
    } else if (textController2.text.isEmpty) {
      Get.snackbar("Error", "Please enter new password");
    } else if (textController3.text.isEmpty) {
      Get.snackbar("Error", "Please enter confirm password");
    } else {
      Get.off(
        SuccesspasswordView(),
      );
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
