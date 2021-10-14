import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_pending_controller.dart';

class OrderPendingView extends GetView<OrderPendingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderPendingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderPendingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
