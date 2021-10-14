import 'package:get/get.dart';

import '../controllers/expenditure_monthly_controller.dart';

class ExpenditureMonthlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenditureMonthlyController>(
      () => ExpenditureMonthlyController(),
    );
  }
}
