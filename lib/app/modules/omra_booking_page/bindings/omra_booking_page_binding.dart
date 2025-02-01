import 'package:get/get.dart';

import '../controllers/omra_booking_page_controller.dart';

class OmraBookingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OmraBookingPageController>(
      () => OmraBookingPageController(),
    );
  }
}
