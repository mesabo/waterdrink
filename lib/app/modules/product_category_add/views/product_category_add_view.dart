import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/utils/custom_field.dart';

import '../controllers/product_category_add_controller.dart';

class ProductCategoryAddView extends GetView<ProductCategoryAddController> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Category Add'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _key,
            child: ListView(
              children: [
                CustomField1(
                  label: 'Nom',
                  hint: 'Fruit',
                  action: TextInputAction.next,
                  keyboard: TextInputType.name,
                  controller: prodcataddCTL.name,
                ),
                CustomField1(
                  label: 'Description',
                  hint:
                      "Un fruit est ce qui résulte de la transformation d'une fleur après sa fécondation.",
                  action: TextInputAction.go,
                  keyboard: TextInputType.name,
                  lines: 5,
                  controller: prodcataddCTL.description,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("ENREGISTRER"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
