import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAddController extends GetxController {
  final nameTC = TextEditingController();
  final priceTC = TextEditingController();
  final categoryTC = 'Fruits'.obs;
  // final active = true.obs;

  var categories =
      ['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple'].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
