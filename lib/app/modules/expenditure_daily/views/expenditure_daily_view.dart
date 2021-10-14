import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expenditure_daily_controller.dart';

class ExpenditureDailyView extends GetView<ExpenditureDailyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpenditureDailyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExpenditureDailyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
