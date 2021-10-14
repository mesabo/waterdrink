import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_daily_controller.dart';

class OrderDailyView extends GetView<OrderDailyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderDailyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderDailyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
