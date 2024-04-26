import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgerController extends GetxController{
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
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
  @override
  void onClose() {
    textController1.dispose();
    textController2.dispose();


    focusNode1.dispose();
    focusNode2.dispose();


    super.onClose();
  }
}