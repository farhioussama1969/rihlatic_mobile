import 'package:get/get.dart';

import '../controllers/omra_details_page_controller.dart';

class OmraDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OmraDetailsPageController>(
      () => OmraDetailsPageController(),
    );
  }
}
