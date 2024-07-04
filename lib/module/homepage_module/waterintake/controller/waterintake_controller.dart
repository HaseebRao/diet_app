import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterintakeController extends GetxController {
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

  final List<String> textNo = ['01', '02', '03', '04', '05', '06', '07'];
  late TooltipBehavior tooltip;
  var selectedIndices = <int>[].obs;
  void toggleIndex(int index) {
    if (selectedIndices.contains(index)) {
      selectedIndices.remove(index);
    } else {
      selectedIndices.add(index);
    }
  }
}
