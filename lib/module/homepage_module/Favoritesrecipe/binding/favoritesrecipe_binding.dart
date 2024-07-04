import 'package:diet_app/module/homepage_module/Favoritesrecipe/controller/favoritesrecipe_controller.dart';
import 'package:get/get.dart';

class FavoritesrecipeBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(()=>FavoritesrecipeController());
  }

}