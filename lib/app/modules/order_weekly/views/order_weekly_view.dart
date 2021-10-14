import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_weekly_controller.dart';

class OrderWeeklyView extends GetView<OrderWeeklyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderWeeklyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderWeeklyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
