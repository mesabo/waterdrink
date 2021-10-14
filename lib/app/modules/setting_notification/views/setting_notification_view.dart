import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_notification_controller.dart';

class SettingNotificationView extends GetView<SettingNotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingNotificationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SettingNotificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
