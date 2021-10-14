import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/report_yearly_controller.dart';

class ReportYearlyView extends GetView<ReportYearlyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReportYearlyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReportYearlyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
