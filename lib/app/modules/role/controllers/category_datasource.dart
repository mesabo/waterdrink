import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/employee_role_model.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';
import 'package:waterdrink/app/data/models/product_model.dart';

class RoleDataSource extends DataGridSource {
  RoleDataSource({required List<EmployeeRole> role}) {
    dataGridRows = role
        .map<DataGridRow>((row) => DataGridRow(cells: [
              DataGridCell<Widget>(
                  columnName: 'id',
                  value: Text(row.id.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'name',
                  value: Text(row.name.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'customer',
                  value: Text(row.description.customer ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.customer
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'delivered',
                  value: Text(row.description.delivered ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.delivered
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'employees',
                  value: Text(row.description.employees ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.employees
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'products',
                  value: Text(row.description.products ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.products
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'role',
                  value: Text(row.description.role ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.role
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'reports',
                  value: Text(row.description.reports ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.reports
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'settings',
                  value: Text(row.description.settings ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.settings
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'help',
                  value: Text(row.description.help ? 'oui' : 'non',
                      style: TextStyle(
                          color: row.description.help
                              ? Colors.green
                              : Colors.amber),
                      softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'createdat',
                  value: Text(row.createdat.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'action',
                  value: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit, size: 18),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.red, size: 18),
                      ),
                    ],
                  )),
            ]))
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;
  @override
  Widget? buildTableSummaryCellWidget(
      GridTableSummaryRow summaryRow,
      GridSummaryColumn? summaryColumn,
      RowColumnIndex rowColumnIndex,
      String summaryValue) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(summaryValue),
    );
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    // print('OK ' + row.getCells().first.columnName);
    return DataGridRowAdapter(
        cells: row
            .getCells()
            .map((datagridcell) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                alignment: Alignment.centerLeft,
                child: datagridcell.value))
            .toList());
  }
}
