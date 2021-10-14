import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customer_alerted_controller.dart';

class CustomerAlertedView extends GetView<CustomerAlertedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomerAlertedView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CustomerAlertedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
