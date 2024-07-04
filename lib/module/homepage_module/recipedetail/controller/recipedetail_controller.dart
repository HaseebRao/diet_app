import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../common/app_colors.dart';
import '../../Favoritesrecipe/binding/favoritesrecipe_binding.dart';
import '../../Favoritesrecipe/view/favoritesrecipe_view.dart';
import '../../progress/controller/progress_controller.dart';

class RecipedetailController extends GetxController {
  TextEditingController ingredientController = TextEditingController();
  TextEditingController cookController = TextEditingController();
  void validation() {
    if (ingredientController.text.isEmpty && cookController.text.isEmpty) {
      Get.snackbar("Error", "Fields are required");
    } else if (ingredientController.text.isEmpty) {
      Get.snackbar("Error", "Please enter ingredient");
    } else if (cookController.text.isEmpty) {
      Get.snackbar("Error", "Please enter recipe");
    } else {
      Get.to(() => FavoritesrecipeView(), binding: FavoritesrecipeBinding());
    }
  }

  late List<ChartData> data;
  late TooltipBehavior tooltip;
  var selecterecipes = 'Add to meal'.obs;

  @override
  void onInit() {
    data = [
      ChartData('David', 60, AppColors.yellow),
      ChartData('Steve', 25, AppColors.Profilecircle),
      ChartData('Jack', 15, AppColors.purple),
      // ChartData('Others', 52, AppColors.Profilecircle),
    ];
    tooltip = TooltipBehavior(enable: true);
    super.onInit();
  }
}
