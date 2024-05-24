// subscription_controller.dart
import 'package:get/get.dart';

import '../../../../common/app_text.dart';

class SubscriptionController extends GetxController {
  var selectedContainerIndex = RxInt(-1); // Initialize with an invalid index
  var isChecked = <bool>[false, false, false].obs;
  var text = <modelclass>[
    modelclass(Apptexts.applaustextes, Apptexts.exteratext),
    modelclass(Apptexts.applaustextes2, Apptexts.applaustextes4),
    modelclass(Apptexts.applaustextes3, Apptexts.applaustextes5),
  ].obs;
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

class modelclass {
  final String texts;
  final String differentTexts;

  modelclass(this.texts, this.differentTexts);
}
