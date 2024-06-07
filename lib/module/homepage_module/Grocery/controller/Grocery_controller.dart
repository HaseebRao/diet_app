import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GroceryController extends GetxController{
  var isDropdownOpen = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize isDropdownOpen list with false values for 5 items
    isDropdownOpen.assignAll(List.generate(5, (_) => false));
  }

  void toggleDropdown(int index) {
    // Reset all to false except the one at the given index
    for (int i = 0; i < isDropdownOpen.length; i++) {
      if (i == index) {
        isDropdownOpen[i] = !isDropdownOpen[i];
      } else {
        isDropdownOpen[i] = false;
      }
    }
  }
  final List<String> texts = [
    'Cheddar cheese',
    'Milk',
    'Non-Dairy Beverages',
    'Non-Dairy Beverages',
    'Non-Dairy Beverages',
  ];
  final List<String> text = [
    'Dairy',
    'Fats and oil',
    'Fruits and veg.',
    'Meat',
    'Nuts and seed',
  ];
}