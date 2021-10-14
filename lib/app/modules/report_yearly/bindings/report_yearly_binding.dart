import 'package:get/get.dart';

import '../controllers/report_yearly_controller.dart';

class ReportYearlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportYearlyController>(
      () => ReportYearlyController(),
    );
  }
}
