import 'package:get/get.dart';

class ApperanceController extends GetxController{
String _orderType ="home_delivery";
String get orderType =>orderType;
void serOrderType(String type){
  _orderType = type;
  print("The order type is "+ orderType);
  update();
}

  void changeRadio(int i) {}
}