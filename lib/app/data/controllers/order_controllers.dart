import 'package:get/get.dart';
import 'package:waterdrink/app/modules/order/controllers/order_controller.dart';
import 'package:waterdrink/app/modules/order_add/controllers/order_add_controller.dart';
import 'package:waterdrink/app/modules/order_daily/controllers/order_daily_controller.dart';
import 'package:waterdrink/app/modules/order_delivered/controllers/order_delivered_controller.dart';
import 'package:waterdrink/app/modules/order_monthly/controllers/order_monthly_controller.dart';
import 'package:waterdrink/app/modules/order_pending/controllers/order_pending_controller.dart';
import 'package:waterdrink/app/modules/order_week/controllers/order_week_controller.dart';
import 'package:waterdrink/app/modules/order_yearly/controllers/order_yearly_controller.dart';

final orderCTL = Get.put(OrderController());
final orderaddCTL = Get.put(OrderAddController());
final orderdeliveredCTL = Get.put(OrderDeliveredController());
final orderpendingCTL = Get.put(OrderPendingController());
final orderdayCTL = Get.put(OrderDailyController());
final orderweekCTL = Get.put(OrderWeekController());
final ordermonthCTL = Get.put(OrderMonthlyController());
final orderyearCTL = Get.put(OrderYearlyController());
