import 'package:get/get.dart';

class PickyourownController extends GetxController {
  var favorites = List<bool>.filled(8, false).obs; // Observable list to track favorite state for each item

  void toggleFavorite(int index) {
    favorites[index] = !favorites[index]; // Toggle the favorite state of the specific item
  }
  var isSelectedDiscover = true.obs;
  void toggleSelection() {
    isSelectedDiscover.value = !isSelectedDiscover.value;
  }
}
