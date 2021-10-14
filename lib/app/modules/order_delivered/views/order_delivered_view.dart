import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_delivered_controller.dart';

class OrderDeliveredView extends GetView<OrderDeliveredController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderDeliveredView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderDeliveredView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
