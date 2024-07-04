import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../success/binding/success_binding.dart';
import '../../success/view/success_page.dart';

class AddrecipesController extends GetxController {
  var selectedSize = 'Medium'.obs;
  var selectednumber = '2'.obs;
  var selecterecipes = 'Add to meal'.obs;
  RxString imagePath = ''.obs;
  TextEditingController recipeNameController = TextEditingController();
  void validation() {
    if (recipeNameController.text.isEmpty) {
      Get.snackbar("Error", "Fields are required");
    } else {
      Get.to(
        SuccessView(),
        binding: SuccesssBinding(),
      );
    }
  }

  Future<void> openGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    } else {
      Get.snackbar(
        'Error',
        'No image selected',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
