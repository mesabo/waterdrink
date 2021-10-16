import 'package:flutter/material.dart';
import 'package:getxfire/getxfire.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/modules/product/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product View'),
          centerTitle: true,
        ),
        body: GetBuilder(
          builder: (ProductController c) => ListView(
            children: [
              Container(
                height: 95.h,
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
                          title: 'Total Catégories: {Name}',
                          titleColumnSpan: 3,
                          columns: [
                            GridSummaryColumn(
                                name: 'Name',
                                columnName: 'name',
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
                          columnName: 'price',
                          width: 30.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price',
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
                          columnName: 'image',
                          width: 25.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Image',
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
                          width: 40.w,
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
