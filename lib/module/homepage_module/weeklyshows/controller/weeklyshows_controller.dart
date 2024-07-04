import 'package:get/get.dart';

class WeeklyshowsController extends GetxController{
  final List<String> texts = [
    'Week 1',
    'Week 2',
    'Week 3',
    'Week 4',

  ];
  var selectedContainerIndex = RxInt(-1);
  var favorites = List<bool>.filled(8, false).obs; // Observable list to track favorite state for each item
  var isChecked = <bool>[false, false, false].obs;
  void toggleFavorite(int index) {
    favorites[index] = !favorites[index]; // Toggle the favorite state of the specific item
  }
  var isSaveButtonVisible = false.obs;
  void toggleCheckbox(int index, bool value) {
    isChecked[index] = value;
  }
  void handleContainerTap(int index) {
    // If the tapped container is already selected, toggle the checkbox
    if (index == selectedContainerIndex.value) {
      toggleCheckbox(index, !isChecked[index]);
    } else {
      // Otherwise, update the selected container index and fill the checkbox
      selectedContainerIndex.value = index;
      isChecked.assignAll(List.filled(isChecked.length, false)); // Unfill all checkboxes
      toggleCheckbox(index, true);

      // Toggle visibility of the Save button for the third container
      isSaveButtonVisible.value = (index == 2);// Fill the checkbox at the tapped index
    }
  }
}