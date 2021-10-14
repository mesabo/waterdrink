import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/report_monthly_controller.dart';

class ReportMonthlyView extends GetView<ReportMonthlyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReportMonthlyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReportMonthlyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
