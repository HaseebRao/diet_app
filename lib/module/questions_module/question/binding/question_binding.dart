import 'package:diet_app/module/questions_module/question/controller/question_controller.dart';
import 'package:get/get.dart';

class QuestionBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => QuestionController());
  }

}






