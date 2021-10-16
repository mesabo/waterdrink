import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers%20copy.dart';

import '../controllers/expenditure_controller.dart';

class ExpenditureView extends GetView<ExpenditureController> {
  var amount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ExpenditureView'),
          centerTitle: true,
        ),
        body: GetBuilder(
          initState: (state) {
            amount = 0;
            for (var item in expCTL.expenditures) {
              amount = amount + item.amount;
            }
          },
          builder: (ExpenditureController c) => ListView(
            children: [
              Container(
                height: 90.h,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: SfDataGrid(
                    rowsPerPage: 15,
                    source: c.prodDataSource,
                    columnWidthMode: ColumnWidthMode.auto,
                    columnWidthCalculationRange:
                        ColumnWidthCalculationRange.allRows,
                    verticalScrollPhysics:
                        const AlwaysScrollableScrollPhysics(),
                    isScrollbarAlwaysShown: true,
                    tableSummaryRows: [
                      GridTableSummaryRow(
                          showSummaryInRow: false,
                          title: 'Total: {Amount} soit ${amount} Frs',
                          titleColumnSpan: 3,
                          columns: [
                            GridSummaryColumn(
                                name: 'Amount',
                                columnName: 'amount',
                                summaryType: GridSummaryType.count)
                          ],
                          position: GridTableSummaryRowPosition.bottom),
                    ],
                    columns: [
                      GridColumn(
                          columnName: 'id',
                          width: 10.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "ID",
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'name',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Noms',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'Amount',
                          width: 30.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Montant',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'category',
                          width: 25.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Category',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'createdat',
                          width: 25.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Createdat',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'updateat',
                          width: 25.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Updateat',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'action',
                          width: 30.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Actions',
                                overflow: TextOverflow.ellipsis,
                              ))),
                    ],
                    selectionMode: SelectionMode.multiple,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
