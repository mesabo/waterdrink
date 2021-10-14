import 'package:get/get.dart';

import '../controllers/order_week_controller.dart';

class OrderWeekBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderWeekController>(
      () => OrderWeekController(),
    );
  }
}
