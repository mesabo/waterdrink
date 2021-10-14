import 'package:get/get.dart';

import '../controllers/employee_blocked_controller.dart';

class EmployeeBlockedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmployeeBlockedController>(
      () => EmployeeBlockedController(),
    );
  }
}
