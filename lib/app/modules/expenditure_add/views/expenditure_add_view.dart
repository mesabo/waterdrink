import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:waterdrink/app/data/controllers/product_controllers%20copy.dart';
import 'package:waterdrink/app/routes/app_pages.dart';
import 'package:waterdrink/app/utils/custom_field.dart';

import '../controllers/expenditure_add_controller.dart';

class ExpenditureAddView extends GetView<ExpenditureAddController> {
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
                    AwesomeDropDown(
                      elevation: 1,
                      dropDownList: expaddCTL.categories,
                      selectedItem: expaddCTL.categoryTC.value,
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
                        expaddCTL.categoryTC.value = selectedItem;
                      },
                    ),
                    CustomField1(
                      label: 'Prix',
                      hint: 'ex: 1000',
                      action: TextInputAction.next,
                      keyboard: TextInputType.phone,
                      controller: expaddCTL.amountTC,
                    ),
                    CustomField1(
                      label: 'Nom',
                      hint: 'Carburant',
                      action: TextInputAction.done,
                      keyboard: TextInputType.name,
                      controller: expaddCTL.nameTC,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        expCTL.onInit();
                        Get.offAndToNamed(Routes.EXPENDITURE);
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
        expaddCTL.categoryTC.value = value.toString();
      },
    );
  }

  String _value = 'Autre depense';
  final dropdown = expaddCTL.categories
      .map((e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          ))
      .toList();
}
