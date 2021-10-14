import 'package:get/get.dart';

import '../controllers/setting_security_controller.dart';

class SettingSecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingSecurityController>(
      () => SettingSecurityController(),
    );
  }
}
