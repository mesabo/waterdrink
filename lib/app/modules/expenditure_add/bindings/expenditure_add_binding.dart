import 'package:get/get.dart';

import '../controllers/expenditure_add_controller.dart';

class ExpenditureAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenditureAddController>(
      () => ExpenditureAddController(),
    );
  }
}
