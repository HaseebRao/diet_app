import 'package:get/get.dart';

class ViewplanController extends GetxController {
  var selectedIndex = 0.obs;
  void selectText(int index) {
    selectedIndex.value = index;
  }
}