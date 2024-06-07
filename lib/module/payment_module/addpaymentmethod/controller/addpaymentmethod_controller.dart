import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';

class AddpaymentmethodController extends GetxController {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final TextEditingController textController4 = TextEditingController();
  final TextEditingController textController5 = TextEditingController();

  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  final FocusNode focusNode5 = FocusNode();

  var borderColor1 = AppColors.Loginbordercolor.withOpacity(0.4).obs;
  var borderColor2 = AppColors.Loginbordercolor.withOpacity(0.4).obs;
  var borderColor3 = AppColors.Loginbordercolor.withOpacity(0.4).obs;
  var borderColor4 = AppColors.Loginbordercolor.withOpacity(0.4).obs;
  var borderColor5 = AppColors.Loginbordercolor.withOpacity(0.4) .obs;

  @override
  void onInit() {
    super.onInit();

    focusNode1.addListener(() {
      if (!focusNode1.hasFocus && textController1.text.isNotEmpty) {
        borderColor1.value = AppColors.Profilecircles;
      }
    });

    focusNode2.addListener(() {
      if (!focusNode2.hasFocus && textController2.text.isNotEmpty) {
        borderColor2.value = AppColors.Profilecircles;
      }
    });

    focusNode3.addListener(() {
      if (!focusNode3.hasFocus && textController3.text.isNotEmpty) {
        borderColor3.value = AppColors.Profilecircles;
      }
    });

    focusNode4.addListener(() {
      if (!focusNode4.hasFocus && textController4.text.isNotEmpty) {
        borderColor4.value = AppColors.Profilecircles;
      }
    });

    focusNode5.addListener(() {
      if (!focusNode5.hasFocus && textController5.text.isNotEmpty) {
        borderColor5.value = AppColors.Profilecircles;
      }
    });
  }

  void updateBorder1(String value) {
    borderColor1.value = value.isNotEmpty ? AppColors.Profilecircles : AppColors.Loginbordercolor.withOpacity(0.4);
  }

  void updateBorder2(String value) {
    borderColor2.value = value.isNotEmpty ? AppColors.Profilecircles : AppColors.Loginbordercolor.withOpacity(0.4);
  }

  void updateBorder3(String value) {
    borderColor3.value = value.isNotEmpty ? AppColors.Profilecircles : AppColors.Loginbordercolor.withOpacity(0.4);
  }

  void updateBorder4(String value) {
    borderColor4.value = value.isNotEmpty ? AppColors.Profilecircles : AppColors.Loginbordercolor.withOpacity(0.4);
  }

  void updateBorder5(String value) {
    borderColor5.value = value.isNotEmpty ? AppColors.Profilecircles : AppColors.Loginbordercolor.withOpacity(0.4);
  }

  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    textController4.dispose();
    textController5.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
    super.onClose();
  }
}
