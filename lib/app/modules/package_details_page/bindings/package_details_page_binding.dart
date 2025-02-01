import 'package:get/get.dart';

import '../controllers/package_details_page_controller.dart';

class PackageDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageDetailsPageController>(
      () => PackageDetailsPageController(),
    );
  }
}
