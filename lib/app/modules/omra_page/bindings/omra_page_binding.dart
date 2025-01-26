import 'package:get/get.dart';

import '../controllers/omra_page_controller.dart';

class OmraPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OmraPageController>(
      () => OmraPageController(),
    );
  }
}
