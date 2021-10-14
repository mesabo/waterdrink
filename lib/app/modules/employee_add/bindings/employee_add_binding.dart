import 'package:get/get.dart';

import '../controllers/employee_add_controller.dart';

class EmployeeAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmployeeAddController>(
      () => EmployeeAddController(),
    );
  }
}
