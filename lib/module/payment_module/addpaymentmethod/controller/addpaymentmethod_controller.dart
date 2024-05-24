import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddpaymentmethodController extends GetxController {
  // Define a focus node
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
    focusNode5.addListener(() {
      if (!focusNode5.hasFocus) {
        print('Text field 5 lost focus');
      }
    });
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