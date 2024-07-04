// subscription_controller.dart
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../common/app_text.dart';
import '../../subscriptionmethod/binding/subsmethod_binding.dart';
import '../../subscriptionmethod/view/subsmethod_view.dart';

class SubscriptionController extends GetxController {
  var selectedIndex = (-1).obs;
  var currentPage = 0.obs;
  PageController pageController = PageController();

  void changePage(int index) {
    currentPage.value = index;
  }

  var selectedContainerIndex = RxInt(-1);
  void selectContainer() {
    if (selectedContainerIndex.value == -1) {
      Get.snackbar("Error", "Please select any package");
    } else {
      Get.to(
        SubsmethodView(),
        binding: SubsmethodBinding(),
      );
    }
  }

  var isChecked = <bool>[false, false, false].obs;
  var text = <modelclass>[
    modelclass(
      Apptexts.applaustextes,
      Apptexts.exteratext,
      'assets/images/subscription2.png',
    ),
    modelclass(
      Apptexts.applaustextes2,
      Apptexts.applaustextes4,
      'assets/images/subscription1.png',
    ),
    modelclass(
      Apptexts.applaustextes3,
      Apptexts.applaustextes5,
      'assets/images/subscription3.png',
    ),
  ].obs;
  var isSaveButtonVisible = false.obs;
  void toggleCheckbox(int index, bool value) {
    isChecked[index] = value;
  }

  void handleContainerTap(int index) {
    if (index == selectedContainerIndex.value) {
      toggleCheckbox(index, !isChecked[index]);
    } else {
      selectedContainerIndex.value = index;
      isChecked.assignAll(
          List.filled(isChecked.length, false)); // Unfill all checkboxes
      toggleCheckbox(index, true);

      // Toggle visibility of the Save button for the third container
      isSaveButtonVisible.value =
          (index == 2); // Fill the checkbox at the tapped index
    }
  }
}

class modelclass {
  final String texts;
  final String differentTexts;
  final String image;

  modelclass(this.texts, this.differentTexts, this.image);
}
