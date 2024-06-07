import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterintakeController extends GetxController{
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