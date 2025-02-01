import 'package:get/get.dart';

import '../controllers/package_booking_page_controller.dart';

class PackageBookingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageBookingPageController>(
      () => PackageBookingPageController(),
    );
  }
}
