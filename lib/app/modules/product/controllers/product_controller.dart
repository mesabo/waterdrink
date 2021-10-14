import 'package:get/get.dart';
import 'package:waterdrink/app/data/models/product_model.dart';

import 'category_datasource.dart';

class ProductController extends GetxController {
  var title = 'title'.obs;
  var prodDataSource = ProductDataSource(product: [
    Product(
        id: '1',
        name: 'Apple',
        price: '2000',
        category: 'Fruit',
        enable: false,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Product(
        id: '2',
        name: 'Banana',
        price: '1000',
        category: 'Fruit',
        enable: true,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Product(
        id: '3',
        name: 'Grapes',
        price: '500',
        category: 'Fruit',
        enable: false,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Product(
        id: '4',
        name: 'Orange',
        price: '2100',
        category: 'Fruit',
        enable: false,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Product(
        id: '5',
        name: 'watermelon',
        price: '2700',
        category: 'Fruit',
        enable: false,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
    Product(
        id: '6',
        name: 'Pineapple',
        price: '1500',
        category: 'Fruit',
        enable: false,
        createdat: '2021-10-01',
        updateat: '2021-10-01'),
  ]);

  @override
  void onInit() {
    prodDataSource = ProductDataSource(product: [
      Product(
          id: '1',
          name: 'Apple',
          price: '2000',
          category: 'Fruit',
          enable: false,
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Product(
          id: '2',
          name: 'Banana',
          price: '1000',
          category: 'Fruit',
          enable: false,
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Product(
          id: '3',
          name: 'Grapes',
          price: '500',
          category: 'Fruit',
          enable: false,
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Product(
          id: '4',
          name: 'Orange',
          price: '2100',
          category: 'Fruit',
          enable: false,
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Product(
          id: '5',
          name: 'watermelon',
          price: '2700',
          category: 'Fruit',
          enable: false,
          createdat: '2021-10-01',
          updateat: '2021-10-01'),
      Product(
          id: '6',
          name: 'Pineapple',
          price: '1500',
          category: 'Fruit',
          enable: false,
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
