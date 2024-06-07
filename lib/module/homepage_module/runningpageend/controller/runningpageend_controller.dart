import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text.dart';
import '../../diary/modelclass/model_class.dart';
import '../../progress/controller/progress_controller.dart';

class RunningpageendController extends GetxController{
  var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
  final List <ModelClass> modelclass = <ModelClass> [
    ModelClass(image:  Appasset.location , text1: Apptexts.Distance, text2: Apptexts.distanceValue),
    ModelClass(image: Appasset.drop, text1: Apptexts.caloriess , text2:Apptexts. caloriesValue),
    ModelClass(image:Appasset.watch, text1: Apptexts.time, text2: Apptexts. timeValue)
  ];
  late List<ChartData> data;
  late TooltipBehavior tooltip;
  var selectedIndices = <int>[].obs; // Holds the indices of selected items
  final List<String> textNo = ['01', '02', '03', '04', '05', '06', '07'];

  void toggleIndex(int index) {
    if (selectedIndices.contains(index)) {
      selectedIndices.remove(index);
    } else {
      selectedIndices.add(index);
    }
  }
  @override
  void onInit() {
    data = [
      ChartData('David',57, AppColors.Profilecircle),
      ChartData('Steve', 43, AppColors.yellow),
      // ChartData('Jack',15, AppColors.purple),
      // ChartData('Others', 52, AppColors.Profilecircle),
    ];
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}
