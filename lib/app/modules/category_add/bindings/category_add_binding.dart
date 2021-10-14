import 'package:get/get.dart';

import '../controllers/category_add_controller.dart';

class CategoryAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryAddController>(
      () => CategoryAddController(),
    );
  }
}
