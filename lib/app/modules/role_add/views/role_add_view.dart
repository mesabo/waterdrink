import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:waterdrink/app/data/controllers/role_controllers.dart';
import 'package:waterdrink/app/routes/app_pages.dart';
import 'package:waterdrink/app/utils/custom_field.dart';

import '../controllers/role_add_controller.dart';

class RoleAddView extends GetView<RoleAddController> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text('Ajouter un Employé'),
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
                      label: 'Titre',
                      hint: 'ex: vendeur',
                      action: TextInputAction.next,
                      keyboard: TextInputType.name,
                      controller: roleaddCTL.nameTC,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'CHOISIR LES MODULES ACCESSIBLES POUR CE RÔLE',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    _description(),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        roleaddCTL.refresh();
                        Get.offAndToNamed(Routes.ROLE);
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

  Wrap _description() {
    return Wrap(
      spacing: 10,
      children: [
        FilterChip(
          label: Text('${roleaddCTL.categories[0]}'),
          selected: roleaddCTL.check_employees.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_employees.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[1]}'),
          selected: roleaddCTL.check_customers.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_customers.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[2]}'),
          selected: roleaddCTL.check_roles.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_roles.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[3]}'),
          selected: roleaddCTL.check_orders.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_orders.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[4]}'),
          selected: roleaddCTL.check_products.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_products.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[5]}'),
          selected: roleaddCTL.check_delivered.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_delivered.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[6]}'),
          selected: roleaddCTL.check_settings.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_settings.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[7]}'),
          selected: roleaddCTL.check_reports.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_reports.value = value,
        ),
        FilterChip(
          label: Text('${roleaddCTL.categories[8]}'),
          selected: roleaddCTL.check_help.value,
          selectedColor: Colors.lightBlue.shade100,
          onSelected: (value) => roleaddCTL.check_help.value = value,
        ),
      ],
    );
  }
}
