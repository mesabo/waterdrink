import 'package:flutter/material.dart';


  DropdownButton<String> custommenu() {
  return DropdownButton(
    hint: Text('Choisir'),
    value: 'Apple',
    items: dropdown,
    elevation: 10,
    onChanged: (value) {},
  );
}

final dropdown =
    <String>['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple']
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: e,
            ))
        .toList();
