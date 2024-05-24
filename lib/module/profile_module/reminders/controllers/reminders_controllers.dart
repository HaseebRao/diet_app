import 'package:get/get.dart';

class MyCheckboxController extends GetxController {
  var isChecked = <bool>[false, false, false, false, false].obs;

  void toggleCheckbox(int index, bool? value) {
    if (index >= 0 && index < isChecked.length) {
      isChecked[index] = !isChecked[index]!;
    }
  }
}