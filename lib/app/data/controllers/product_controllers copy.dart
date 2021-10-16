import 'package:get/get.dart';
import 'package:waterdrink/app/modules/expenditure/controllers/expenditure_controller.dart';
import 'package:waterdrink/app/modules/expenditure_add/controllers/expenditure_add_controller.dart';
import 'package:waterdrink/app/modules/expenditure_daily/controllers/expenditure_daily_controller.dart';
import 'package:waterdrink/app/modules/expenditure_monthly/controllers/expenditure_monthly_controller.dart';

final expCTL = Get.put(ExpenditureController());
final expaddCTL = Get.put(ExpenditureAddController());
final expdayCTL = Get.put(ExpenditureDailyController());
final expmonthCTL = Get.put(ExpenditureMonthlyController());
