import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_monthly_controller.dart';

class OrderMonthlyView extends GetView<OrderMonthlyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderMonthlyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderMonthlyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
