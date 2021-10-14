import 'package:get/get.dart';
import 'package:waterdrink/app/modules/employee/controllers/employee_controller.dart';
import 'package:waterdrink/app/modules/employee_add/controllers/employee_add_controller.dart';
import 'package:waterdrink/app/modules/employee_blocked/controllers/employee_blocked_controller.dart';

final empCTL = Get.put(EmployeeController());
final empaddCTL = Get.put(EmployeeAddController());
final empblockedCTL = Get.put(EmployeeBlockedController());
