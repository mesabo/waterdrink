import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/employee_blocked_controller.dart';

class EmployeeBlockedView extends GetView<EmployeeBlockedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmployeeBlockedView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EmployeeBlockedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
