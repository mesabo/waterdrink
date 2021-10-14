import 'package:get/get.dart';

import '../controllers/expenditure_daily_controller.dart';

class ExpenditureDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenditureDailyController>(
      () => ExpenditureDailyController(),
    );
  }
}
