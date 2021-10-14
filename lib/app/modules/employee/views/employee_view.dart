import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/employee_controller.dart';

class EmployeeView extends GetView<EmployeeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmployeeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EmployeeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
