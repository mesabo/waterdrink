import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:waterdrink/app/modules/dashboard/views/dashboard_item.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  List<Widget> itemlist = [
    DashboardItem(
      bg: Colors.teal,
      icon: Icons.ac_unit,
      title: 'home',
      ontap: () {},
    ),
    DashboardItem(
      bg: Colors.teal,
      icon: Icons.ac_unit,
      title: 'home',
      ontap: () {},
    ),
    DashboardItem(
      bg: Colors.teal,
      icon: Icons.ac_unit,
      title: 'home',
      ontap: () {},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 300,
            itemBuilder: (BuildContext context, int index) {
              return itemlist[index];
            }),
      ),
    );
  }
}
