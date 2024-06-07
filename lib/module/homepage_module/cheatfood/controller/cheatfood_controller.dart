import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_colors.dart';
import '../../progress/controller/progress_controller.dart';

class CheatfoodController extends GetxController{
  late List<ChartData> data;
  late TooltipBehavior tooltip;
  @override
  void onInit() {
    data = [

      ChartData('Steve', 40, AppColors.Profilecircle),
      ChartData('Jack',40, AppColors.yellow),
      // ChartData('Others', 52, AppColors.Profilecircle),
    ];
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}