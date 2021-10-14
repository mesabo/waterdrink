import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/utils/custom_field.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';

import '../controllers/product_add_controller.dart';

class ProductAddView extends GetView<ProductAddController> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text('Ajouter un produit'),
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
                      controller: prodaddCTL.nameTC,
                    ),
                    CustomField1(
                      label: 'Prix',
                      hint: 'ex: 1000',
                      action: TextInputAction.next,
                      keyboard: TextInputType.phone,
                      controller: prodaddCTL.priceTC,
                    ),
                    AwesomeDropDown(
                      elevation: 1,
                      dropDownList: prodaddCTL.categories,
                      selectedItem: prodaddCTL.categoryTC.value,
                      selectedItemTextStyle: const TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      dropDownListTextStyle: const TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      onDropDownItemClick: (selectedItem) {
                        prodaddCTL.categoryTC.value = selectedItem;
                      },
                    ),
                    SizedBox(height: 20),
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
        ));
  }

  DropdownButton<String> custommenu() {
    return DropdownButton(
      underline: Container(),
      style: TextStyle(
          fontSize: 22, color: Colors.blueGrey, fontWeight: FontWeight.bold),
      hint: Text('Choisir'),
      value: 'Apple',
      items: dropdown,
      elevation: 10,
      onChanged: (value) {
        prodaddCTL.categoryTC.value = value.toString();
      },
    );
  }

  String _value = 'none';
  final dropdown =
      <String>['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple']
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList();
}
