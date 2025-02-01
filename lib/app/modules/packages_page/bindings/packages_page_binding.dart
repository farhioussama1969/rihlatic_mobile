import 'package:get/get.dart';

import '../controllers/packages_page_controller.dart';

class PackagesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackagesPageController>(
      () => PackagesPageController(),
    );
  }
}
