import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({Key? key, this.icon, this.title, this.ontap, this.bg})
      : super(key: key);
  final icon;
  final title;
  final bg;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1.0,
        margin: EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: bg),
          child: InkWell(
            onTap: ontap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                Center(
                  child: Text(title,
                      style: TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}
