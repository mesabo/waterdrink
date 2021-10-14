import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expenditure_monthly_controller.dart';

class ExpenditureMonthlyView extends GetView<ExpenditureMonthlyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpenditureMonthlyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExpenditureMonthlyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
