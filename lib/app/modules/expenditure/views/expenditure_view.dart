import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expenditure_controller.dart';

class ExpenditureView extends GetView<ExpenditureController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpenditureView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExpenditureView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
