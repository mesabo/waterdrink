import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_order_controller.dart';

class AddOrderView extends GetView<AddOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddOrderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddOrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
