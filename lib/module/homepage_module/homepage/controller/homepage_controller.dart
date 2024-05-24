import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';
import '../../../../common/app_assets.dart';
import '../../../../common/app_text.dart';

class HomepageController extends GetxController {
  var currentIndex = 0.obs; // Observable for the current index of the carousel
  var currentPage = 0.obs;
  var isChecked = <bool>[false, false, false].obs;
  var isListVisible = false.obs; // Observable to track the visibility of the list
  var isDropdownOpen = false.obs; // Observable to track dropdown state
  var issDropdownOpen = true.obs; // Observable to track dropdown state
  final List<String> imageUrls = [
    'assets/images/staar.png',
    'assets/images/staar.png',
    'assets/images/staar.png',
  ];

  var text = <ModelClass>[
    ModelClass(Apptexts.breakfasts, Apptexts.carbs, Appasset.egg, "assets/images/image.png"),
    ModelClass(Apptexts.lunch, Apptexts.carbs, Appasset.lunche, "assets/images/imagee.png"),
    ModelClass(Apptexts.dinner, Apptexts.carbs, Appasset.dinneer, "assets/images/imageee.png"),
  ].obs;

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    currentIndex.value = index;
  }

  void toggleListVisibility() {
    isListVisible.value = !isListVisible.value; // Toggle the visibility of the list
  }
  void openDropdown() {
    isDropdownOpen.toggle();
  }
  void openDropdowns() {
    issDropdownOpen.toggle();
  }
}

class ModelClass {
  final String texts;
  final String differentTexts;
  final String svgImage;
  final String pngImage;

  ModelClass(this.texts, this.differentTexts, this.svgImage, this.pngImage);
}
