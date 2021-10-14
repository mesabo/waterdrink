import 'package:get/get.dart';
import 'package:waterdrink/app/data/models/product_category_model.dart';

import 'category_datasource.dart';

class ProductCategoryController extends GetxController {
  var prodCatDataSource = ProductCategoryDataSource(category: [
    ProductCategory(
        id: '1',
        name: 'Apple',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    ProductCategory(
        id: '2',
        name: 'Banana',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    ProductCategory(
        id: '3',
        name: 'Grapes',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    ProductCategory(
        id: '4',
        name: 'Orange',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    ProductCategory(
        id: '5',
        name: 'watermelon',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    ProductCategory(
        id: '6',
        name: 'Pineapple',
        description:
            "DataGridSource is used to obtain the row data for the SfDataGrid.",
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
  ]);

  @override
  void onInit() {
    prodCatDataSource = ProductCategoryDataSource(category: [
      ProductCategory(
          id: '1',
          name: 'Apple',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      ProductCategory(
          id: '2',
          name: 'Banana',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      ProductCategory(
          id: '3',
          name: 'Grapes',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      ProductCategory(
          id: '4',
          name: 'Orange',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      ProductCategory(
          id: '5',
          name: 'watermelon',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      ProductCategory(
          id: '6',
          name: 'Pineapple',
          description:
              "DataGridSource is used to obtain the row data for the SfDataGrid.",
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
    ]);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
