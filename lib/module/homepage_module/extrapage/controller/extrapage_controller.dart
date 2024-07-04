import 'package:get/get.dart';

class ExtrapageController extends GetxController {
  RxList<bool> filledStates = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();

    for (int i = 0; i < 9; i++) {
      filledStates.add(false);
    }
  }

  void toggleFill(int index) {
    if (index < filledStates.length) {
      filledStates[index] = !filledStates[index];
      update(); // Update the UI after state change
    }
  }

  void addGlass() {
    filledStates.add(false);
    update();
  }
}
