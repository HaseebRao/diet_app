import 'package:get/get.dart';

class SubsmethodController extends GetxController{
  var selectedContainerIndex = RxInt(-1);

  void handleContainerTap(int index) {
    selectedContainerIndex.value = index;
  }
}
