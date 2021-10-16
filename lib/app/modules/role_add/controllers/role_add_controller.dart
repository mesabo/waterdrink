import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waterdrink/app/data/models/employee_role_model.dart';

class RoleAddController extends GetxController {
  final nameTC = TextEditingController();
  final check_employees = false.obs;
  final check_roles = false.obs;
  final check_reports = false.obs;
  final check_delivered = false.obs;
  final check_settings = false.obs;
  final check_products = false.obs;
  final check_customers = false.obs;
  final check_orders = true.obs;
  final check_help = true.obs;

  final categoryTC = 'Vendeur'.obs;

  var categories = <String>[
    'Employés',
    'Clients',
    'Rôle Employé',
    'Commandes',
    'Produits',
    'Livreurs',
    'Réglages',
    'statistiquess',
    'Aides',
  ];
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
