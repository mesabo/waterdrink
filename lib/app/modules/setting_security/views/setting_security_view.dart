import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_security_controller.dart';

class SettingSecurityView extends GetView<SettingSecurityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingSecurityView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SettingSecurityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
