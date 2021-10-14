import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_add_controller.dart';

class OrderAddView extends GetView<OrderAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OrderAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
