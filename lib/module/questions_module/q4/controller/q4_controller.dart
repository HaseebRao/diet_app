// Q4Controller.dart

import 'package:get/get.dart';

class Q4Controller extends GetxController {
  final products = <Product>[
    Product(name: "1", ),
    Product(name: "2", ),
    Product(name: "3", ),
    Product(name: "4", ),
    Product(name: "5", ),
    Product(name: "6", ),
    Product(name: "7", ),
    Product(name: "9", ),
    Product(name: "10", ),
    Product(name: "7", ),
    Product(name: "9", ),
    Product(name: "10", ),
  ].obs;
  }

class Product {
  final String name;

  Product({required this.name,});
}