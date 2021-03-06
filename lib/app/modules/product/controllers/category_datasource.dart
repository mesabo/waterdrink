import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';
import 'package:waterdrink/app/data/models/product_model.dart';

class ProductDataSource extends DataGridSource {
  ProductDataSource({required List<Product> product}) {
    dataGridRows = product
        .map<DataGridRow>((row) => DataGridRow(cells: [
              DataGridCell<Widget>(
                  columnName: 'id',
                  value: Text(row.id.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'name',
                  value: Text(row.name.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'price',
                  value: Text(row.price.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'category',
                  value: Text(row.category.toString(), softWrap: true)),
              const DataGridCell<Widget>(
                  columnName: 'image',
                  value: Icon(Icons.production_quantity_limits)),
              DataGridCell<Widget>(
                  columnName: 'createdat',
                  value: Text(row.createdat.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'updateat',
                  value: Text(row.updateat.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'action',
                  value: Row(
                    children: [
                      row.enable as bool == true
                          ? Icon(Icons.circle_sharp, color: Colors.green)
                          : Icon(Icons.circle_sharp, color: Colors.grey),
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
