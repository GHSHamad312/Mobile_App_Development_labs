import 'package:get/get.dart';

class CartController extends GetxController {
  var indexes = <int>[].obs;

  void add(int index) {
    indexes.add(index);
  }
}
