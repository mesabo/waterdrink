import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expenditure_add_controller.dart';

class ExpenditureAddView extends GetView<ExpenditureAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpenditureAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExpenditureAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
