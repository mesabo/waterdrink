import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/role_add_controller.dart';

class RoleAddView extends GetView<RoleAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoleAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RoleAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
