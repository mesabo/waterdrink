import 'package:get/get.dart';
import 'package:waterdrink/app/modules/setting/controllers/setting_controller.dart';
import 'package:waterdrink/app/modules/setting_notification/controllers/setting_notification_controller.dart';
import 'package:waterdrink/app/modules/setting_security/controllers/setting_security_controller.dart';

final settingCTL = Get.put(SettingController());
final notificationCTL = Get.put(SettingNotificationController());
final securityCTL = Get.put(SettingSecurityController());
