import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenditureAddController extends GetxController {
  final nameTC = TextEditingController();
  final amountTC = TextEditingController();

  final categoryTC = 'Autre depense'.obs;

  var categories = <String>[
    'Nourriture',
        'Carburant',
    'Communication',
    'Frais de route',
    'Matière première',
        'Réparation',
    'Salaire',
    'Autre depense'
  ].obs;
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
