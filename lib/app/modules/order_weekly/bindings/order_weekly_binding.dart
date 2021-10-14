import 'package:get/get.dart';

import '../controllers/order_weekly_controller.dart';

class OrderWeeklyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderWeeklyController>(
      () => OrderWeeklyController(),
    );
  }
}
