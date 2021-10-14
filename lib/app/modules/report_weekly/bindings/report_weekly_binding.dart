import 'package:get/get.dart';

import '../controllers/report_weekly_controller.dart';

class ReportWeeklyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportWeeklyController>(
      () => ReportWeeklyController(),
    );
  }
}
