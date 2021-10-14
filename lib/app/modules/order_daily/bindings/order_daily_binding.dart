import 'package:get/get.dart';

import '../controllers/order_daily_controller.dart';

class OrderDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDailyController>(
      () => OrderDailyController(),
    );
  }
}
