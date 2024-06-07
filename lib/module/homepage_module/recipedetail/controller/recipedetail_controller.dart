import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_colors.dart';
import '../../progress/controller/progress_controller.dart';

class RecipedetailController extends GetxController{
  late List<ChartData> data;
  late TooltipBehavior tooltip;
  var selecterecipes = 'Add to meal'.obs;

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