
import 'package:get/get.dart';

class RadioListController extends GetxController {
  var selectedValue = 'Option 1'.obs;

  void updateSelectedValue(String value) {
    selectedValue.value = value;
  }
}