import 'package:get/get.dart';
import '../../../../common/app_text.dart';

class HelpPageController extends GetxController {
  final showAnswer = List<bool>.filled(4, false).obs;
  final List<String> answerTexts = [
    Apptexts.dummytext,
    Apptexts.sixebox,
    Apptexts.privacypolicy,
    Apptexts.sixebox,
  ];
  void toggleAnswer(int index) {
    showAnswer[index] = !showAnswer[index];
  }
}
