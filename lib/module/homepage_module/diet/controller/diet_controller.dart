import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_colors.dart';
import '../../progress/controller/progress_controller.dart';

class DietController extends GetxController{
  var favorites = List<bool>.filled(8, false).obs; // Observable list to track favorite state for each item

  void toggleFavorite(int index) {
    favorites[index] = !favorites[index]; // Toggle the favorite state of the specific item
  }
  late List<ChartData> data;
  late TooltipBehavior tooltip;
  var selectedIndex = 0.obs;

  void selectText(int index) {
    selectedIndex.value = index;
  }
  @override
  void onInit() {
    data = [
      ChartData('David', 60, AppColors.yellow),
      ChartData('Steve', 25, AppColors.Profilecircle),
      ChartData('Jack',15, AppColors.purple),
      // ChartData('Others', 52, AppColors.Profilecircle),
    ];
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}