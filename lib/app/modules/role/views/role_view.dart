import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../controllers/role_controller.dart';

class RoleView extends GetView<RoleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RoleView'),
          centerTitle: true,
        ),
        body: GetBuilder(
          builder: (RoleController c) => ListView(
            children: [
              Container(
                height: 95.h,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: SfDataGrid(
                    rowsPerPage: 15,
                    source: c.roleDataSource,
                    columnWidthMode: ColumnWidthMode.auto,
                    columnWidthCalculationRange:
                        ColumnWidthCalculationRange.allRows,
                    verticalScrollPhysics:
                        const AlwaysScrollableScrollPhysics(),
                    isScrollbarAlwaysShown: true,
                    tableSummaryRows: [
                      GridTableSummaryRow(
                          showSummaryInRow: false,
                          title: 'Total Rôles: {Name}',
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
                          columnName: 'customer',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Client',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'delivered',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Livreur',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'employees',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Employés',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'products',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Produits',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'role',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Rôle',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'reports',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'rapport',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'settings',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Reglage',
                                overflow: TextOverflow.ellipsis,
                              ))),
                      GridColumn(
                          columnName: 'help',
                          width: 20.w,
                          label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Aide',
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
