import 'package:get/get.dart';

class PlanController extends GetxController {
  var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
  final List<String> texts = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing.',
    'Lorem Ipsum is simply dummy text of the printing.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing.',
    'Lorem Ipsum is simply dummy text of the printing.',

  ];

}