import 'package:get/get.dart';

import 'package:waterdrink/app/modules/add_order/bindings/add_order_binding.dart';
import 'package:waterdrink/app/modules/add_order/views/add_order_view.dart';
import 'package:waterdrink/app/modules/category/bindings/category_binding.dart';
import 'package:waterdrink/app/modules/category/views/category_view.dart';
import 'package:waterdrink/app/modules/category_add/bindings/category_add_binding.dart';
import 'package:waterdrink/app/modules/category_add/views/category_add_view.dart';
import 'package:waterdrink/app/modules/customer/bindings/customer_binding.dart';
import 'package:waterdrink/app/modules/customer/views/customer_view.dart';
import 'package:waterdrink/app/modules/customer_add/bindings/customer_add_binding.dart';
import 'package:waterdrink/app/modules/customer_add/views/customer_add_view.dart';
import 'package:waterdrink/app/modules/customer_alerted/bindings/customer_alerted_binding.dart';
import 'package:waterdrink/app/modules/customer_alerted/views/customer_alerted_view.dart';
import 'package:waterdrink/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:waterdrink/app/modules/dashboard/views/dashboard_view.dart';
import 'package:waterdrink/app/modules/employee/bindings/employee_binding.dart';
import 'package:waterdrink/app/modules/employee/views/employee_view.dart';
import 'package:waterdrink/app/modules/employee_add/bindings/employee_add_binding.dart';
import 'package:waterdrink/app/modules/employee_add/views/employee_add_view.dart';
import 'package:waterdrink/app/modules/employee_blocked/bindings/employee_blocked_binding.dart';
import 'package:waterdrink/app/modules/employee_blocked/views/employee_blocked_view.dart';
import 'package:waterdrink/app/modules/expenditure/bindings/expenditure_binding.dart';
import 'package:waterdrink/app/modules/expenditure/views/expenditure_view.dart';
import 'package:waterdrink/app/modules/expenditure_add/bindings/expenditure_add_binding.dart';
import 'package:waterdrink/app/modules/expenditure_add/views/expenditure_add_view.dart';
import 'package:waterdrink/app/modules/expenditure_daily/bindings/expenditure_daily_binding.dart';
import 'package:waterdrink/app/modules/expenditure_daily/views/expenditure_daily_view.dart';
import 'package:waterdrink/app/modules/expenditure_monthly/bindings/expenditure_monthly_binding.dart';
import 'package:waterdrink/app/modules/expenditure_monthly/views/expenditure_monthly_view.dart';
import 'package:waterdrink/app/modules/help/bindings/help_binding.dart';
import 'package:waterdrink/app/modules/help/views/help_view.dart';
import 'package:waterdrink/app/modules/home/bindings/home_binding.dart';
import 'package:waterdrink/app/modules/home/views/home_view.dart';
import 'package:waterdrink/app/modules/login/bindings/login_binding.dart';
import 'package:waterdrink/app/modules/login/views/login_view.dart';
import 'package:waterdrink/app/modules/order/bindings/order_binding.dart';
import 'package:waterdrink/app/modules/order/views/order_view.dart';
import 'package:waterdrink/app/modules/order_add/bindings/order_add_binding.dart';
import 'package:waterdrink/app/modules/order_add/views/order_add_view.dart';
import 'package:waterdrink/app/modules/order_daily/bindings/order_daily_binding.dart';
import 'package:waterdrink/app/modules/order_daily/views/order_daily_view.dart';
import 'package:waterdrink/app/modules/order_delivered/bindings/order_delivered_binding.dart';
import 'package:waterdrink/app/modules/order_delivered/views/order_delivered_view.dart';
import 'package:waterdrink/app/modules/order_monthly/bindings/order_monthly_binding.dart';
import 'package:waterdrink/app/modules/order_monthly/views/order_monthly_view.dart';
import 'package:waterdrink/app/modules/order_pending/bindings/order_pending_binding.dart';
import 'package:waterdrink/app/modules/order_pending/views/order_pending_view.dart';
import 'package:waterdrink/app/modules/order_week/bindings/order_week_binding.dart';
import 'package:waterdrink/app/modules/order_week/views/order_week_view.dart';
import 'package:waterdrink/app/modules/order_weekly/bindings/order_weekly_binding.dart';
import 'package:waterdrink/app/modules/order_weekly/views/order_weekly_view.dart';
import 'package:waterdrink/app/modules/order_yearly/bindings/order_yearly_binding.dart';
import 'package:waterdrink/app/modules/order_yearly/views/order_yearly_view.dart';
import 'package:waterdrink/app/modules/others/bindings/others_binding.dart';
import 'package:waterdrink/app/modules/others/views/others_view.dart';
import 'package:waterdrink/app/modules/product/bindings/product_binding.dart';
import 'package:waterdrink/app/modules/product/views/product_view.dart';
import 'package:waterdrink/app/modules/product_add/bindings/product_add_binding.dart';
import 'package:waterdrink/app/modules/product_add/views/product_add_view.dart';
import 'package:waterdrink/app/modules/product_category/bindings/product_category_binding.dart';
import 'package:waterdrink/app/modules/product_category/views/product_category_view.dart';
import 'package:waterdrink/app/modules/product_category_add/bindings/product_category_add_binding.dart';
import 'package:waterdrink/app/modules/product_category_add/views/product_category_add_view.dart';
import 'package:waterdrink/app/modules/report/bindings/report_binding.dart';
import 'package:waterdrink/app/modules/report/views/report_view.dart';
import 'package:waterdrink/app/modules/report_daily/bindings/report_daily_binding.dart';
import 'package:waterdrink/app/modules/report_daily/views/report_daily_view.dart';
import 'package:waterdrink/app/modules/report_monthly/bindings/report_monthly_binding.dart';
import 'package:waterdrink/app/modules/report_monthly/views/report_monthly_view.dart';
import 'package:waterdrink/app/modules/report_weekly/bindings/report_weekly_binding.dart';
import 'package:waterdrink/app/modules/report_weekly/views/report_weekly_view.dart';
import 'package:waterdrink/app/modules/report_yearly/bindings/report_yearly_binding.dart';
import 'package:waterdrink/app/modules/report_yearly/views/report_yearly_view.dart';
import 'package:waterdrink/app/modules/role/bindings/role_binding.dart';
import 'package:waterdrink/app/modules/role/views/role_view.dart';
import 'package:waterdrink/app/modules/role_add/bindings/role_add_binding.dart';
import 'package:waterdrink/app/modules/role_add/views/role_add_view.dart';
import 'package:waterdrink/app/modules/setting/bindings/setting_binding.dart';
import 'package:waterdrink/app/modules/setting/views/setting_view.dart';
import 'package:waterdrink/app/modules/setting_notification/bindings/setting_notification_binding.dart';
import 'package:waterdrink/app/modules/setting_notification/views/setting_notification_view.dart';
import 'package:waterdrink/app/modules/setting_security/bindings/setting_security_binding.dart';
import 'package:waterdrink/app/modules/setting_security/views/setting_security_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEE,
      page: () => EmployeeView(),
      binding: EmployeeBinding(),
    ),
    GetPage(
      name: _Paths.ROLE,
      page: () => RoleView(),
      binding: RoleBinding(),
    ),
    GetPage(
      name: _Paths.EXPENDITURE,
      page: () => ExpenditureView(),
      binding: ExpenditureBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => ReportView(),
      binding: ReportBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER,
      page: () => CustomerView(),
      binding: CustomerBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ORDER,
      page: () => AddOrderView(),
      binding: AddOrderBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_ADD,
      page: () => OrderAddView(),
      binding: OrderAddBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DELIVERED,
      page: () => OrderDeliveredView(),
      binding: OrderDeliveredBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_PENDING,
      page: () => OrderPendingView(),
      binding: OrderPendingBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_WEEK,
      page: () => OrderWeekView(),
      binding: OrderWeekBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_MONTHLY,
      page: () => OrderMonthlyView(),
      binding: OrderMonthlyBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_WEEKLY,
      page: () => OrderWeeklyView(),
      binding: OrderWeeklyBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DAILY,
      page: () => OrderDailyView(),
      binding: OrderDailyBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_YEARLY,
      page: () => OrderYearlyView(),
      binding: OrderYearlyBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_ADD,
      page: () => ProductAddView(),
      binding: ProductAddBinding(),
    ),
    GetPage(
      name: _Paths.EXPENDITURE_ADD,
      page: () => ExpenditureAddView(),
      binding: ExpenditureAddBinding(),
    ),
    GetPage(
      name: _Paths.EXPENDITURE_MONTHLY,
      page: () => ExpenditureMonthlyView(),
      binding: ExpenditureMonthlyBinding(),
    ),
    GetPage(
      name: _Paths.EXPENDITURE_DAILY,
      page: () => ExpenditureDailyView(),
      binding: ExpenditureDailyBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_DAILY,
      page: () => ReportDailyView(),
      binding: ReportDailyBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_WEEKLY,
      page: () => ReportWeeklyView(),
      binding: ReportWeeklyBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_MONTHLY,
      page: () => ReportMonthlyView(),
      binding: ReportMonthlyBinding(),
    ),
    GetPage(
      name: _Paths.REPORT_YEARLY,
      page: () => ReportYearlyView(),
      binding: ReportYearlyBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_ADD,
      page: () => CustomerAddView(),
      binding: CustomerAddBinding(),
    ),
    GetPage(
      name: _Paths.ROLE_ADD,
      page: () => RoleAddView(),
      binding: RoleAddBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_NOTIFICATION,
      page: () => SettingNotificationView(),
      binding: SettingNotificationBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_SECURITY,
      page: () => SettingSecurityView(),
      binding: SettingSecurityBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEE_ADD,
      page: () => EmployeeAddView(),
      binding: EmployeeAddBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEE_BLOCKED,
      page: () => EmployeeBlockedView(),
      binding: EmployeeBlockedBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_ALERTED,
      page: () => CustomerAlertedView(),
      binding: CustomerAlertedBinding(),
    ),
    GetPage(
      name: _Paths.OTHERS,
      page: () => OthersView(),
      binding: OthersBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_CATEGORY,
      page: () => ProductCategoryView(),
      binding: ProductCategoryBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_ADD,
      page: () => CategoryAddView(),
      binding: CategoryAddBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_CATEGORY_ADD,
      page: () => ProductCategoryAddView(),
      binding: ProductCategoryAddBinding(),
    ),
  ];
}
