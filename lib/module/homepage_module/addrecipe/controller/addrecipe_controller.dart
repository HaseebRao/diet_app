import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddrecipesController extends GetxController {
  var selectedSize = 'Medium'.obs;
  var selectednumber = '2'.obs;
  var selecterecipes = 'Add to meal'.obs;
  RxString imagePath = ''.obs;
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