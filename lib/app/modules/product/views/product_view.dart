import 'package:flutter/material.dart';
import 'package:getxfire/getxfire.dart';
import 'package:waterdrink/app/modules/product/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product View'),
          centerTitle: true,
        ),
        body: GetBuilder(
          builder: (ProductController controller) => ListView(
            children: [
              Text(controller.title.value),
            ],
          ),
        ));
  }
}
