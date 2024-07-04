import 'package:diet_app/common/app_text.dart';
import 'package:diet_app/module/homepage_module/diary/modelclass/model_class.dart';
import 'package:diet_app/module/homepage_module/diary/modelclass/modelclasses.dart';
import 'package:diet_app/module/payment_module/subscription/controller/subscription_controller.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';

class DiaryController extends GetxController {
  var fillStates = List.generate(4, (index) => false.obs);

  void toggleFill(int index) {
    fillStates[index].value = !fillStates[index].value;
  }
  final List <ModelClass> modelclass = <ModelClass> [
    ModelClass(image:  Appasset.drops, text1: Apptexts.mlvalue, text2: Apptexts.diarymytext),
    ModelClass(image: Appasset.drop, text1: Apptexts.mlvalues, text2:Apptexts. dailygoal),
    ModelClass(image:Appasset.scan, text1: Apptexts. min, text2: Apptexts.goalin)
  ];
final List<Modelclasses> modelclas = <Modelclasses>[
  Modelclasses(svgpath:Appasset.egg, breakfast: Apptexts.breakfast, lunch:Apptexts.kacalvalue ,),
  Modelclasses(svgpath:Appasset.burger, breakfast: Apptexts.lunch, lunch:Apptexts.kacalvalue ,),
  Modelclasses(svgpath:Appasset.glass, breakfast: Apptexts.Snacks, lunch:Apptexts.kacalvalue ,),
  Modelclasses(svgpath:Appasset.dinneer, breakfast: Apptexts.dinner, lunch:Apptexts.kacalvalue ,),
];
  final List<String> text1 = [
    'M', 'T', 'W', 'T', 'F', 'S', 'S',
  ];

  var selectedText = ''.obs; // Observable for text selection at the top
  var selectedIndex = (-1).obs; // Observable for selected index in ListView

  void selectText(String text) {
    selectedText.value = text;
  }

  void selectIndex(int index) {
    selectedIndex.value = index;
  }
}
