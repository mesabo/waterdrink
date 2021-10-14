import 'package:get/get.dart';
import 'package:waterdrink/app/modules/product/controllers/product_controller.dart';
import 'package:waterdrink/app/modules/product_add/controllers/product_add_controller.dart';
import 'package:waterdrink/app/modules/product_category/controllers/product_category_controller.dart';
import 'package:waterdrink/app/modules/product_category_add/controllers/product_category_add_controller.dart';

final prodCTL = Get.put(ProductController());
final prodaddCTL = Get.put(ProductAddController());
final prodcataddCTL = Get.put(ProductCategoryAddController());
final prodcatCTL = Get.put(ProductCategoryController());
