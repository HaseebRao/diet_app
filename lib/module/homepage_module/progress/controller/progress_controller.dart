import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_colors.dart';

class ProgressController extends GetxController {
  late List<ChartData> data;
  late TooltipBehavior tooltip;

  @override
  void onInit() {
    data = [
      ChartData('David', 33, AppColors.blues),
      ChartData('Steve', 33, AppColors.purple),
      ChartData('Jack', 33, AppColors.Profilecircle),
      // ChartData('Others', 52, AppColors.Profilecircle),
    ];
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
