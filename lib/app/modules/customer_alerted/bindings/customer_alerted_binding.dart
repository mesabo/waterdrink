import 'package:get/get.dart';

import '../controllers/customer_alerted_controller.dart';

class CustomerAlertedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerAlertedController>(
      () => CustomerAlertedController(),
    );
  }
}
