import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_week_controller.dart';

class OrderWeekView extends GetView<OrderWeekController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderWeekView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderWeekView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
