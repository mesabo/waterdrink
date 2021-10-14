import 'package:get/get.dart';
import 'package:waterdrink/app/modules/customer/controllers/customer_controller.dart';
import 'package:waterdrink/app/modules/customer_add/controllers/customer_add_controller.dart';
import 'package:waterdrink/app/modules/customer_alerted/controllers/customer_alerted_controller.dart';

final customerCTL = Get.put(CustomerController());
final customeraddCTL = Get.put(CustomerAddController());
final customeralertCTL = Get.put(CustomerAlertedController());
