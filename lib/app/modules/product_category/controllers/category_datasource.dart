import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';

class ProductCategoryDataSource extends DataGridSource {
  ProductCategoryDataSource({required List<ProductCategory> category}) {
    dataGridRows = category
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<Widget>(
                  columnName: 'id',
                  value: Text(dataGridRow.id.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'name',
                  value: Text(dataGridRow.name.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'description',
                  value:
                      Text(dataGridRow.description.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'createdat',
                  value:
                      Text(dataGridRow.createdat.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'updateat',
                  value: Text(dataGridRow.updateat.toString(), softWrap: true)),
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
