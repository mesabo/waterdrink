import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_yearly_controller.dart';

class OrderYearlyView extends GetView<OrderYearlyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderYearlyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderYearlyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
