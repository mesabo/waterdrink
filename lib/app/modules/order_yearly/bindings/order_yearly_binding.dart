import 'package:get/get.dart';

import '../controllers/order_yearly_controller.dart';

class OrderYearlyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderYearlyController>(
      () => OrderYearlyController(),
    );
  }
}
