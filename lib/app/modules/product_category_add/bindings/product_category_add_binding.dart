import 'package:get/get.dart';

import '../controllers/product_category_add_controller.dart';

class ProductCategoryAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductCategoryAddController>(
      () => ProductCategoryAddController(),
    );
  }
}
