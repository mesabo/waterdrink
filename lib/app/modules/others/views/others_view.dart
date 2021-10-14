import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/others_controller.dart';

class OthersView extends GetView<OthersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OthersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OthersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
