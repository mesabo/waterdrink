import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_add_controller.dart';

class CategoryAddView extends GetView<CategoryAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CategoryAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CategoryAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
