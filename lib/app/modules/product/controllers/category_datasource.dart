import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';
import 'package:waterdrink/app/data/models/product_model.dart';

class ProductDataSource extends DataGridSource {
  ProductDataSource({required List<Product> product}) {
    dataGridRows = product
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<Widget>(
                  columnName: 'id',
                  value: Text(dataGridRow.id.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'name',
                  value: Text(dataGridRow.name.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'price',
                  value: Text(dataGridRow.price.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'category',
                  value: Text(dataGridRow.category.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'image', value: Icon(Icons.person)),
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
                      Switch(
                        value: dataGridRow.enable,
                        onChanged: (value) {
                          dataGridRow.enable = value.toString();
                        },
                      ),
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
