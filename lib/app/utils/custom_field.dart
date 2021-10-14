import 'package:flutter/material.dart';

class CustomField1 extends StatelessWidget {
  CustomField1(
      {Key? key,
      this.label = 'Nom',
      this.hint = 'ex:',
      this.keyboard = TextInputType.name,
      this.action = TextInputAction.next,
      this.controller,
      this.lines = 1})
      : super(key: key);

  final label, hint, keyboard, action, controller, lines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        child: TextField(
          textInputAction: action,
          keyboardType: keyboard,
          maxLines: lines,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text(label),
            hintText: hint,
          ),
        ),
      ),
    );
  }
}

