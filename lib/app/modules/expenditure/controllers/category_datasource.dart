import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/expenditure_model.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';
import 'package:waterdrink/app/data/models/product_model.dart';

class ExpenditureDataSource extends DataGridSource {
  ExpenditureDataSource({required List<Expenditure> expendditure}) {
    dataGridRows = expendditure
        .map<DataGridRow>((row) => DataGridRow(cells: [
              DataGridCell<Widget>(
                  columnName: 'id',
                  value: Text(row.id.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'name',
                  value: Text(row.name.toString(), softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'amount',
                  value: Text('${row.amount}', softWrap: true)),
              DataGridCell<Widget>(
                  columnName: 'category',
                  value: Text(row.category.toString(), softWrap: true)),
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
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 18,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete, color: Colors.amber, size: 18),
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
  Widget buildTableSummaryCellWidget(
      GridTableSummaryRow summaryRow,
      GridSummaryColumn? summaryColumn,
      RowColumnIndex rowColumnIndex,
      String summaryValue) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(summaryValue),
    );
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
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
