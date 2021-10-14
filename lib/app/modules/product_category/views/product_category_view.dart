import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:waterdrink/app/data/controllers/product_controllers.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';
import 'package:waterdrink/app/modules/product_category/controllers/category_datasource.dart';

import '../controllers/product_category_controller.dart';

class ProductCategoryView extends GetView<ProductCategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Category View'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: SfDataGrid(
              source: prodcatCTL.prodCatDataSource,
               columnWidthMode: ColumnWidthMode.auto,
              columnWidthCalculationRange: ColumnWidthCalculationRange.allRows,
              verticalScrollPhysics:const AlwaysScrollableScrollPhysics(),
              isScrollbarAlwaysShown: true,
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
                    columnName: 'description',
                    width: 30.w,
                    label: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Description',
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
        ],
      ),
    );
  }
}
