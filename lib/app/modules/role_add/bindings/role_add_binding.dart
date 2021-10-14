import 'package:get/get.dart';

import '../controllers/role_add_controller.dart';

class RoleAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoleAddController>(
      () => RoleAddController(),
    );
  }
}
