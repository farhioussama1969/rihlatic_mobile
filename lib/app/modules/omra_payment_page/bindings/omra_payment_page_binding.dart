import 'package:get/get.dart';

import '../controllers/omra_payment_page_controller.dart';

class OmraPaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OmraPaymentPageController>(
      () => OmraPaymentPageController(),
    );
  }
}
