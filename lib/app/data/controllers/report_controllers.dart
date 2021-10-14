import 'package:get/get.dart';
import 'package:waterdrink/app/modules/report/controllers/report_controller.dart';
import 'package:waterdrink/app/modules/report_daily/controllers/report_daily_controller.dart';
import 'package:waterdrink/app/modules/report_monthly/controllers/report_monthly_controller.dart';
import 'package:waterdrink/app/modules/report_weekly/controllers/report_weekly_controller.dart';
import 'package:waterdrink/app/modules/report_yearly/controllers/report_yearly_controller.dart';

final repCTL = Get.put(ReportController());
final repdayCTL = Get.put(ReportDailyController());
final repweekCTL = Get.put(ReportWeeklyController());
final repmonthCTL = Get.put(ReportMonthlyController());
final repyearCTL = Get.put(ReportYearlyController());
