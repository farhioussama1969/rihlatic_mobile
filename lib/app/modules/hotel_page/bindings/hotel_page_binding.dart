import 'package:get/get.dart';

import '../controllers/hotel_page_controller.dart';

class HotelPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotelPageController>(
      () => HotelPageController(),
    );
  }
}
