import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/report_daily_controller.dart';

class ReportDailyView extends GetView<ReportDailyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReportDailyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReportDailyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
