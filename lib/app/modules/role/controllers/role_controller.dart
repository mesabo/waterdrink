import 'package:get/get.dart';
import 'package:waterdrink/app/data/models/employee_role_model.dart';

import 'category_datasource.dart';

class RoleController extends GetxController {
  var roleDataSource = RoleDataSource(role: [
    EmployeeRole(
      id: '1',
      name: 'Admin',
      description: Description(
          customer: true,
          role: true,
          employees: true,
          reports: true,
          delivered: true,
          settings: true,
          products: true,
          help: true),
      createdat: '2021-10-01',
    ),
    EmployeeRole(
      id: '2',
      name: 'Manager',
      description: Description(
          customer: true,
          role: false,
          employees: true,
          reports: true,
          delivered: false,
          settings: true,
          products: false,
          help: true),
      createdat: '2021-10-01',
    ),
    EmployeeRole(
      id: '3',
      name: 'Vendeur',
      description: Description(
          customer: true,
          role: false,
          employees: true,
          reports: false,
          delivered: true,
          settings: false,
          products: true,
          help: true),
      createdat: '2021-10-01',
    ),
  ]);

  @override
  void onInit() {
    roleDataSource = RoleDataSource(role: [
      EmployeeRole(
        id: '1',
        name: 'Admin',
        description: Description(
            customer: true,
            role: true,
            employees: true,
            reports: true,
            delivered: true,
            settings: true,
            products: true,
            help: true),
        createdat: '2021-10-01',
      ),
      EmployeeRole(
        id: '2',
        name: 'Manager',
        description: Description(
            customer: true,
            role: false,
            employees: true,
            reports: true,
            delivered: false,
            settings: true,
            products: false,
            help: true),
        createdat: '2021-10-01',
      ),
      EmployeeRole(
        id: '3',
        name: 'Vendeur',
        description: Description(
            customer: true,
            role: false,
            employees: true,
            reports: false,
            delivered: true,
            settings: false,
            products: true,
            help: true),
        createdat: '2021-10-01',
      ),
    ]);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
