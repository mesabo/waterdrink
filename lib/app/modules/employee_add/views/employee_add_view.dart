import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/employee_add_controller.dart';

class EmployeeAddView extends GetView<EmployeeAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EmployeeAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EmployeeAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
