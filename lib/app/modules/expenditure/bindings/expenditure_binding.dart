import 'package:get/get.dart';

import '../controllers/expenditure_controller.dart';

class ExpenditureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenditureController>(
      () => ExpenditureController(),
    );
  }
}
