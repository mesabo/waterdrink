import 'package:get/get.dart';

import '../controllers/order_monthly_controller.dart';

class OrderMonthlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderMonthlyController>(
      () => OrderMonthlyController(),
    );
  }
}
