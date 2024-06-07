import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';
import '../../progress/controller/progress_controller.dart';
class FastingstartController extends GetxController {
  List<ChartModelClass> chartData = <ChartModelClass>[
    ChartModelClass(x: "M", y: 22),
    ChartModelClass(x: "T", y: 32),  // 'TUS' ko 'TUE' mein change kar diya
    ChartModelClass(x: "W", y: 17),
    ChartModelClass(x: "T", y: 22),
    ChartModelClass(x: "F", y: 12),
    ChartModelClass(x: "S", y: 31),
    ChartModelClass(x: "S", y: 31),
  ].obs;
  final List<ItemModel> items = [
    ItemModel(svgPath: Appasset.emoji1, text: Apptexts.refreshing),
    ItemModel(svgPath: Appasset.emoji2, text: Apptexts.moderate),
    ItemModel(svgPath: Appasset.emoji3, text: Apptexts.good),
    // Add more items here as needed
  ];
  var selectedIndex = (-1).obs;
  void selectItem(int index) {
    selectedIndex.value = index;
  }
  var hours = "00:00:00".obs;
  var percent = 0.0.obs;
  Timer? _timer;
  var stop = false.obs;
  int totalSeconds = 0;
  var startTime = "".obs; // New variable to store the start time

  void startFasting() {
    if (stop.value) {
      _timer?.cancel();
      return;
    } else {
      // Reset the timer and progress values
      totalSeconds = 0;
      hours.value = "00:00:00";
      percent.value = 0.0;
      // Get the current time and day of the week
      DateTime now = DateTime.now();
      startTime.value = DateFormat('EEE hh:mm a').format(now); // Format to get the day and time
      _timer?.cancel();
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        totalSeconds++;
        int hrs = totalSeconds ~/ 3600;
        int mins = (totalSeconds % 3600) ~/ 60;
        int secs = totalSeconds % 60;

        hours.value = "${hrs.toString().padLeft(2, '0')}:${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
        percent.value = totalSeconds / (24 * 3600);

        if (totalSeconds >= 24 * 3600) {
          _timer?.cancel();
        }
      });
    }
  }
  void stopFasting() {
    _timer?.cancel();
  }
  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
class ItemModel {
  final String svgPath;
  final String text;
  ItemModel({required this.svgPath, required this.text});
}