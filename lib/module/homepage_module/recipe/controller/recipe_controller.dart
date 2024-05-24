import 'package:get/get.dart';

class RecipeController extends GetxController {
  var searchText = ''.obs;

  void updateSearchText(String text) {
    searchText.value = text;
  }

  var isSelectedDiscover = true.obs;

  void toggleSelection() {
    isSelectedDiscover.value = !isSelectedDiscover.value;
  }
}
